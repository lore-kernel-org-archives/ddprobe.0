Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1C51D63F7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754522994; cv=none; b=DO2cst/+WMC19+RBfITtaqmSblTmKChtuuRUzPBaFqKQbSGQ58HRl77ZdLTPzgGy2DXF/flwDhtH27OUerjXtPN9Csm1cOvzIjQzbsXStY4l/MCgXWPsQxDCcCpJvbYvSodyH89KEvTgbS0FX72MNgS2UVXih6RSDl7jv1EgnE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754522994; c=relaxed/simple;
	bh=GQLiruwaF108ToIpYySNcWYoL6tDXWpGswPunZiKCqc=;
	h=To:Subject:From:Message-Id:Date; b=ovs19vqz2wrd1qa61NlphtT5rBuYIDVyUskbO5Duvyz8tV+6q+cKKVTiEzxMqvFJ1HbOZFnNgwP8KEQ98VQS4usZ9DKHFV6dl+ez3uKzuOlzMvWzLN0p29zKnZWT6qsGskAyjn+OY9I7Njup9Exp2TCBd4KoV+CuCQCtL7pJOfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bped1fUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bped1fUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754522993;
	bh=GQLiruwaF108ToIpYySNcWYoL6tDXWpGswPunZiKCqc=;
	h=To:Subject:From:Date:From;
	b=Bped1fUR/tIxgRcltLkHpmFOekYKvNi4Jbq0sglhbdh2yl7mii4WplBmTtFQgFlzt
	 L4ij1j77usVwI5t9emY2S33i2g7Ei5EYYgM6uztHP/Tt6u5kmNoD1AqAPI9uFf/87Z
	 IPkw/w0zyVglcrpXSKVpLXICf3nK6XdADLsDvcKVh4Qu751YOz4aK1tcLfAqpyPeu9
	 UDsDzQosTyY1Fb0KQF/X1p+qqD7kmuXFeMnGH/2EzEPVU1gYXZOlk9Q3Pk60bN85oH
	 uq9QBld8463MlQb+X2qYleb5FT9AclCsY7XUkon22kT1jSYKGR4AkvR43mdgFT7Twi
	 8KI0EzzwtgaaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9CC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452299358.18156.18095753158452938076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7aa8cde1ba75fe7cb9ee2ff122c97539c6e68ef4428ae91266c079cfbde5ec1
Date: Wed, 06 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754522993
