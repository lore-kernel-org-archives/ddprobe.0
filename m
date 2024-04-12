Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49559199B0
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712961563; cv=none; b=vFtdhK4kdzi7zDfC2FrD9Qu3G7PpzYVii7sMFePTfIHddPqEbtG+3dB6Pj7nzKKCFK6a2kyoR6RmMlWwUyqPbqxgirZYZrn3/49vynj1nBhWZaR/+esUM60sIzUhnpIUb6YYOJsXx84PfaOHiVOta8Sixfcgpu+frOPYMZiPXsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712961563; c=relaxed/simple;
	bh=CwLJdWSBGOb+XkCxI4fHBTr0P/dZcRBpoS5qggpNt+Y=;
	h=To:Subject:From:Message-Id:Date; b=GpKfU8HnOwDMf51t5Ihe6La3wHtOY+NGuSF/h1Dxe9PumjhMi6WNmrRWqPIn6B3jGFVY/RQiWbBZDnKzJmJUpxwPaZab0lYvorAfkd9sbZKOhQSA8bLBV2cI39lOqnieXKtfm6oEmyhiqoj96gpH+0sJsINnewLqitqk88fh24M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtOFhkOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtOFhkOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B72C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712961562;
	bh=CwLJdWSBGOb+XkCxI4fHBTr0P/dZcRBpoS5qggpNt+Y=;
	h=To:Subject:From:Date:From;
	b=PtOFhkOEtGBA0vRWtPA6eIJHECQxCEQHJo5W/biEUc75BF7Yb6/0pE3C8xM7BWYp2
	 LmNX+yGR8/YJKECrls3vcSnrLzOby2v/+StKa7OjCoAWq4mxE1cOEoAzeaXfBteH1I
	 GXFOyoefuYqhnLBgmvLQtxibdU450+Rkkd4tj4AOkAjfUMmWzx56O8vaYw/oE+oF2U
	 LRL8tJGfPwIV+Vboj0/HV72xBHIwkLF/R1/x2N3fU9YN0BeRXPuAM8cvWMjOW17C6F
	 MSHZlqyLcd+14WIz/QxgHW4GmNH+skm++2exqIAqlWpXelrVN93jyckME8RNIBfzgZ
	 +wnNw7CsDc+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1C6C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296156280.20311.121772599961282206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac322df34d7e20a9522e9f6b4c6afdb86dc6b16e29e398adaf16538eee66af6
Date: Fri, 12 Apr 2024 22:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712961562
