Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8C7D531
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763329314; cv=none; b=CbYjvmM4ELu3N6UftP0KTfhOI5mhiIpsTD1inaCCZ6leuIa3CUa+fu3hxIQ0cK349mDA2FPEQI2zznNbfsBbt+1H6oH+e31zKo1yU/m6cl5VMgnTi+9S3MFt+tHYhaj8wK9OZBV1iufZi0VZNEFiiYN2yC0QYT+WIJceOeq2ToI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763329314; c=relaxed/simple;
	bh=fG3HbDTHO/Fqy0gKfvPzRz5jngPCnf8IDOBgDInaSmg=;
	h=To:Subject:From:Message-Id:Date; b=knfVxMlqRW1diFrMw/kLIlCoPBgxD5FTdnlkYmeK7EZuYaQTVPVcGVwdarnULVFCVYMQPVoDuIr3oCv35+5jzZdO+6a6+F29q4OIk6M+czFz0Qe0Wn9bJjJg768wIRtbomYBdIpb+u7ZwdARgSsxz38s4gtvqtcnIcqxLKVi8/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BR7V9YG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BR7V9YG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93B2C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763329313;
	bh=fG3HbDTHO/Fqy0gKfvPzRz5jngPCnf8IDOBgDInaSmg=;
	h=To:Subject:From:Date:From;
	b=BR7V9YG34l8gO636qQaCnthyPJwcm4W/+sB2zP4pdxF8ljN9QWsy/h8tJjvwxW2dk
	 wfyuefSKhSs2W4MZDylYzHtjeuy2OIRN2ctmpf5OvK+9qox0hqer0Q2zJ33DghhxK+
	 s9yTHhDVB/RCCVs9ox1b7tKI52UttRJ4TxFVwRtvH9A/F1S9fJTHG6rNhnxFT7TLre
	 vb7vT0PCRJBYuc3lPJBUEU51ZZWt3STtnz/g9aFqc5S7itBIAsUWgQRegDc8WUfoRq
	 eA9xJYf117N2+VWnh7Lt5X8D9q9QXD5xVlCtTnU7SVfmunQj0+rBGWyduaePPdZH1/
	 Y068wQh3BgXjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986CDCCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332931358.25323.12062465808583766632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47aed54e535ca5c89e3f178deeafe732fbcf9e663ff0a92acdf146141d3b45ac
Date: Sun, 16 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763329313
