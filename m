Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAEA23C513
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747819196; cv=none; b=XPamWSOLiUCGta35UBkWxBlN/nbrbMCW1YcsOCdKk0Mr+RVckM1W0opYzSc6aRYXJRdBngQhqHkAgIFV7w3Nk+2d65A/Io/sLl893jodQMGP1djVGsnPoNukPXMobz0UDQnbnNpgS8dYMplCjn5y8HPsISzBeX6b7J3iNG1OPfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747819196; c=relaxed/simple;
	bh=0mMtOK8+l/Y9W5UYR90PF2RDK5at97PCW3pDBVqyobM=;
	h=To:Subject:From:Message-Id:Date; b=F1PgjoaIb460xKV6a4Tk97G11FA/snS7AnI5z58z3kdilGNL+mHxGn/M4wcRBMW7HlBWmH6uQWQSgilOWnqhLlNPetVjKsTLqX3xyWdFWyy8UQUMMh/yJFae1e8nbPyMcUnfoYefO/3/ltZY3Fl1TuBOz69OxejC8grTKo4x7n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndaZrtqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndaZrtqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC15C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747819193;
	bh=0mMtOK8+l/Y9W5UYR90PF2RDK5at97PCW3pDBVqyobM=;
	h=To:Subject:From:Date:From;
	b=ndaZrtqXSwobawQ9GHDUUkDeiCnIIr3/wMDr+U03EptmtYJvkSBrC+/ZJpftfJuHj
	 SeH+G+hnxpclbIbD83Lc1s9af0MF4dPmcpoolz5I+I8gkNX83oqAGvF2oZrIYRnHj/
	 ra/o8mSInQSEm44KqYBIuhp+xsBR8Uiwm4hUs7cPAR1CWzFT7IJ9Z7A2I+JzTefpCb
	 GdLI52BkZsNy1iwuVlcMf8eKmWVJcGka+3s6XJSsx7/YnrEjibkcKL0bFA8j88ES4M
	 4I3hH9vGiVNR7qfuhQ2GLtwRkTMA55eon88AGnmYwEY6RIEXd/zsi/e22mt8YOnYqQ
	 YnC19xnH1kPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F52C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781919361.13390.4151384301850165010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c299f866a01a04f926d4b2a2ec21eb08aa236a78023dc7afc80f03d1292aeaa
Date: Wed, 21 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747819193
