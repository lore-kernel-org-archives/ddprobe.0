Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0301F16B
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749787794; cv=none; b=PdnuuDLExhabUYFfS1p10E2S548LNYgKLwvyFcEfBFRb0o1NyWRqpXGjlGdgt5DkTugodmVIee4IbZtE6fo6z5WHvUQVW0bXqEhXXysxcK/Y+PFKYjG3rVkbbbjSffX4AcBOReZfVFQ/3Zt/QKeqZKZZOzeUtwg5CjrzSyeAY00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749787794; c=relaxed/simple;
	bh=yiQocHlUDOOuv23mK43sND7k4lZ91s+cvZ7RAWYkYUY=;
	h=To:Subject:From:Message-Id:Date; b=YFLoCkjx5ZQcq78mXs5051IJnBjHGf/LoWJi4Drrv7HHrHjA4ddN/7x8TYlo7i628XxZyrHFw7LQemxQBN8VvA48m/1dDBsEFtkXC1XlhRSg+wJ4QHP4MK6c1ip67JrTjLCgWidri2XJwogi0xPf4136RydBssfUF80ZIlGGSI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scwS7AWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scwS7AWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCB0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749787793;
	bh=yiQocHlUDOOuv23mK43sND7k4lZ91s+cvZ7RAWYkYUY=;
	h=To:Subject:From:Date:From;
	b=scwS7AWv8N6N4+Vf21NqH1oic5WV2zeyNN9mE03fTpSnEzR0ef4vyHLzVT8WSQ3EL
	 CJcpW9qnIXlGRcp/cNukFbmnu2Q8Z4r4OGvUVTUCtZfrSe2dTdANsI3Sphtudv42ln
	 Z00vF7eHy8sGNNdbsk9fEr37/J1fjDl3MdTeZlFghEWLVgrnMiLXxwPSyqRSknH1Fi
	 pHhrfZ+YlyIXMMCZTu6ftnQtFe6IhZKLR/i9l+9v/+o1eQ72HZYOoUc0nfxqTJ6yFY
	 u67ZNfsBKgpG0ANHLhTLpAcRfguLnP65U6iJYlFBDkQ24d7hxUC3wXTpypClwwA7tl
	 TmTlH4YMz0vKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97485C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978779358.24572.9175010181829914327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f9c571dcf05b30008394fb61e67638992f337935f61dd4eaec9976ced61c20
Date: Fri, 13 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749787793
