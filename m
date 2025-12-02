Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1F1221F0C
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713574; cv=none; b=VDA6fXSWKUkGIgIMrowcBKENu2cQUjIBdNLmPQBY7dCavTuwCUm5MVIchXTalEoM5Lu2IpgGVEpo1Ln/0fSXHmiRgOHjP9vqNVsbgxZJUDm3eMwMZHXF8kXkUu97jJq/z8vz9tFCKKnS8Muq4juPIUMmsYB7je0nVr9k8moQ8w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713574; c=relaxed/simple;
	bh=0jhlMFO85cYT+37y0P6jGSHq0+n07NbERC2+mCx4/mo=;
	h=To:Subject:From:Message-Id:Date; b=fUTj3ozPygpEsRN/RyQTaFDhuI75eBzXNr1z1q3Drw39NHQ0iITbFsr6iF83jJxfQAWqBoLQ2FGhf3e3t5TCSqVd8f1DWl8NqlbTvvj8/gQ90GqPwFYU8RMib51C9bqFpqem0ImdhzIHZWP3YRPc2A06aVY6/Oka37I0PKt+w1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmm0qRwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmm0qRwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FBFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764713573;
	bh=0jhlMFO85cYT+37y0P6jGSHq0+n07NbERC2+mCx4/mo=;
	h=To:Subject:From:Date:From;
	b=qmm0qRwGhjZThxu4/am1NoRK9KSIMq5hTsP0tJUmKNKLRtOdDrwwJ2i7YP+2Jpw9m
	 0ya9reBGMTzIbXDc46jN7TD6DqlgO7tCVJIMwRYrc8KEvy29GDmzF3OBEVGufhXKej
	 f+BnCflWFWcOKWupkWbNlZd7V8X1bPu8UPBXlr8UvJjz5r7WNhSxrZczQb40ruscFU
	 p/j1bPqhJwZNfPEXPLIsm60xQz5uEoHAwFTcIQQUYdacBLBXm3WZT5k/+gdp4mieAY
	 qfo0zbtP3JLg2GXIZPGHJV008ZwNWbGMIFghUdomsmyCgPyJ8QRCpxhAfwiimRZJmT
	 +R7fTKWM5JlZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E11D12675
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471357358.10849.6352336548781023887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e70ca2555f9f5414ed275a9c3de3da4fa6b5f094fdd38e2c65ef73548c77ee8
Date: Tue, 02 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764713573
