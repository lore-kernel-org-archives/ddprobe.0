Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303F91F0E20
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748955594; cv=none; b=WQnV6DpqBpdF2/waBlUSNLC3ZQRPoPJ8wqrHtLt0UlPduw70brx9COrFNbGo24HJqPerYXAmi1O/tAs85KEswb2tC82UFlekPB/lhMZ+hfDVkJ6y4y0zBrlb0rkx6bUDKjS2zPkQvuuSSEeO6PX0jGR7WtVpwgGhRvUkOrPQPTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748955594; c=relaxed/simple;
	bh=juZJfSLG1iuZKFWp7MpfhOh2zXfck7vp3t0+Qulbo08=;
	h=To:Subject:From:Message-Id:Date; b=gtY8AXaeLUtT4sJEEkq0/r3tbRGyRFcqDdUNuCvWL8mW0tG6yvAwGoK8poY96hWo6XboprB1O15c68g9Ll9n7DZaBhW6zHJtgoD5T5lVayPIuWiK0IE98nBoGeTmDI+JunLuzYIa8zZIOhrfRUbMZbh2oc1QKM9yip1WB6DEyUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acGIGCRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acGIGCRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D58EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748955593;
	bh=juZJfSLG1iuZKFWp7MpfhOh2zXfck7vp3t0+Qulbo08=;
	h=To:Subject:From:Date:From;
	b=acGIGCRjIXoVNB+dGJX1aCQfLR8fbung8paJF4qI4LSoTjpkC5FGhysSExGwx/INc
	 s4rewzJkZvlGj4XSOd3Vbqf4k2NZCaHM9Pfs3Nih2gBACqsx8fiX5bt92TrN9Hcmm1
	 ZVfALGNCtc+1MugfFBIukjZ5i2By3vysj5gJd/mBRfAz2tEtSG+7+S4xrxH71dSn4K
	 /QxANDDZYrxtJSDGEa+g7YAvmV4HVy+a7i4gYUIBHu0IRbe5yfIWOmP9wQs1bl0fnq
	 G+XkuA88IsGWlFBtAn/ryYB2nyTWjrvuAo0ieQH1RXG7AVdCIYllWb/Z/xXP+PLDXU
	 mZLoNb3ozutWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F7C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895559357.16214.131096911602956106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3b8ab39be7d5a45f4d816afe75b81b64df0cab36bbf8d379f5adb0c068c0ea
Date: Tue, 03 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748955593
