Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD1C322A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724046354; cv=none; b=vEDkV0c2QZEHGCYOGU2dMispVlsC/OyHfThrkADq96a2o/h3KF7n/zm5GF5iPIiC4f9w5al7X795vsORSoxbIdPh3cMf0drBXS/zQgIS7+qdgE96cMSITsZxrowHtv5eoOCasWO2wkKhxju2HwDT8RVWXJDdCKeTTejlMGf9IwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724046354; c=relaxed/simple;
	bh=v0lnHJtmm4nYMzfwwTK+gsiup0tu2dFwwRac9bu6/os=;
	h=To:Subject:From:Message-Id:Date; b=uz37CeEcesiUnUVdLBNWwd8TKNLhQdPTxm+1xTsyNwEKRkBZj8OdDPN1WgodqMKVJ+0Jy2fAwbXDtX3TmB191YpWkfSV3bhbpjE9U5jpGjtZjQin5G+UkyS9lfkHJ0WABMEzBnKsSZjEI66VextlKKwGyXft6k8QflaD4ufrAck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd17qqrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd17qqrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD226C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724046353;
	bh=v0lnHJtmm4nYMzfwwTK+gsiup0tu2dFwwRac9bu6/os=;
	h=To:Subject:From:Date:From;
	b=Bd17qqrPUVVLszNBhCdo7/t6GvmQgOuFPdOcaGB9pQTNnv3/jo5id29gWNqMIXc31
	 eHu9UuMgjwAXRq4cT1TVSZTtaI6ovd+4yzVIJocrwRPc4dpjSXyGfTI05SxwVZRquE
	 +ZXka6DnvY/vZDE69t9A2Xmp8NOAwuXkfbdLjLJ6eSmrx+RzxqoXObTJaOVaHVE6HI
	 heJkTqFJjkZM5RUJJ/JtBsx9JZ6wSERZBs+pst1cH9XPib1svQioSy4+HiDjn5js3/
	 G7x49ESrEMcoSGZnbch2qGNRZ1tZJ/nsW61zRQgfS3Fxg2QqY9k2uo5TxEaOFcTbRR
	 UyoC9wh+s/WGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C0AC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404635365.4303.12753648215584670057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2719c9e788331de267ac1cdd2363122c4f69193e9e78848fff47ddaafab3a4
Date: Mon, 19 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724046353
