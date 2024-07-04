Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722B8171A7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720065323; cv=none; b=qu6eKIlCeDwwlMYKT7CgE6/s1I6LSlhyZ6td7ZNkMxZFw5WCxSBW7m0O5OFFicWKGr5iWHNXe4cPPFZJ1P88LkPTPWSR+NWEFjCQK1Sy+VRz1AzsfR02yvsQ8I7ycHjiV2jyMlUtEY6xCOqfGpoy2wW46Y+d3QS3jYigkOOSDAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720065323; c=relaxed/simple;
	bh=0NjJwtTxZe+WhLUYlClRYUTOonJMo/RcbOecll41A64=;
	h=To:Subject:From:Message-Id:Date; b=VD9oeWuXvbzjWMaLj37u/u3EcqdrW8UCKwye6T1i7O6q+IcZunN3pt5PMgbfnBAnqvSjSClv11Z1FT+I+gudaWLbfxTLJrHiUa18tfW4U6ulRf3Z/zaqzaosIzMnb4NewZiNggUALTV1B6gnwf9yMuaBRUT0G6rqocpizSwuUp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6zujI2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6zujI2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2E2C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720065323;
	bh=0NjJwtTxZe+WhLUYlClRYUTOonJMo/RcbOecll41A64=;
	h=To:Subject:From:Date:From;
	b=q6zujI2Ry/UtJoyJvuRBNY9uJJiSCwZH0UXq+qCdrEmSx2/G6e6I1zMK1LqtUS01v
	 Bg7KIj/P2nKyLh9ULyBl1e/chPIoUyo0yjVgqij0ApDTIsH9cUvAyTrWDim2ExJMt1
	 yITePv6wm3y/SQlBDnukYJxFhax29l323wUXlZFu2Lhq+aIJvUEDpkm6tTeiWgwfjZ
	 gRlD7aXts70Dl29nQ8P36fubiXSGe6wkw0+7+1yQbsh0Tb1URCwAaFwVtJcd/oY7KF
	 qP80jQdkZtdbDGbMD3v+3BLnQ7QohKYZfz2B8ju3zNaRxtP8KsBs8t/TJ9imLUDf1K
	 kksp/GPjqqB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D632AC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006532286.32446.3210258018076703901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189cb36d2d1e5436c57d908cab27aaadc40fd103d5d704979e69f34ce5a9a7d4
Date: Thu, 04 Jul 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720065322
