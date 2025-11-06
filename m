Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0936925771
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762421994; cv=none; b=NzKIK1fDiqHqQte0myEQ16nH4LIctM7Crr/Ayegi75v8ZHy9AzfcIPFHhWbWV9KBzUPctECnYbxF2GzvjHhacq9IXpyx7FgGjFDo0kXVNefez2+ziOzjx6H/Z6aZoXYMWxPUFmfedB/ciMoZCPF5sbLVmiWUwhQ8m2aqS0dolTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762421994; c=relaxed/simple;
	bh=Txti80rPaTV8pzTfgz5OzCsBOkaF2suLpEuaL2rTz70=;
	h=To:Subject:From:Message-Id:Date; b=mu7oFSDwFQPVjiQoPnPTbMkgJDkVULpL2GnWf5AjABoRK8985yWTcjKqVCvCO3TklREFtEHWjx3SWsaNfu/+FjRTU7CLq54zN38oW0UnT0mA/IsOCRc3nmMlAwOkTbJu/6Spwitb4ZyQnEZzd2QUMNfTrpJfCmNHFCWxGYaZ4NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTfhSIy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTfhSIy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49A0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762421993;
	bh=Txti80rPaTV8pzTfgz5OzCsBOkaF2suLpEuaL2rTz70=;
	h=To:Subject:From:Date:From;
	b=FTfhSIy5JwQIWsm+U010TrzPYG1cEUj6nWuTubl91NlJ/as6zIjAEFxbZPUGhmcGB
	 I/WQeOaJPEGymo84mXa6YpxZpA8y2seP4/INfg+lMs7VzcqQrsDy5hl2OnqaWXCqs/
	 uOI9PMod02N9cuiLXToslUiioQXlea74/8EfBz/TV8DFYO4Qf448P8kRqCT7bB+n0X
	 dzs3Rfr6y+S2qdCxRqFMA7E5O0mkfn3d7lHJMCKPB/dkQv1d4IguU0v2EjTQB/ZJWy
	 OGxMutCg1EQOYygJH16Bpv2QFlF5zOQDlOcsJQ7N6L555ongMMJAQKe6Zk9USQd5xW
	 qKYATwX5Ftd+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944B0CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242199359.23365.5416137547177898660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65c03edb77686a72183c8797cc4f8438196c2699170d537aba138fe2f38606e
Date: Thu, 06 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762421993
