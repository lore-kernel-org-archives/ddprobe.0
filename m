Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC0A231A3F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751443795; cv=none; b=PmkbuhNcn7cPuxzwJm/kBnBEOQtMwp/diSoUmc6kxPn5TermUaAoPPR9k1hH3ajnh1N1OQ3CfzT08W/92Zw7oaNFTIjWMbtO/NWKfPb896IzwoOim9bgT7S5pesx7vfAwQB1ld0bl3z+vu8hsr6EAUlP8e6QEKH6SCDAhtejBPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751443795; c=relaxed/simple;
	bh=kX7RXv9cpd+EwHLIgzhff4uOiRS6u5VG6hHuINT6zOU=;
	h=To:Subject:From:Message-Id:Date; b=Cl8SmbSpm+LJk3n9yeO0YYKfWMO8B5WHmwbChnDbUyAcN2p3/LRZYao9yz05dcEg45uZoXGnJbJn7/eW27aY3ZhQ+CZLItX5+TiR8zHLo0OXGq/KGQG1cc41sIuBf+kykgrMkkYiugVpcDZdNgUK5keAp1kw1aUh8LRPLFQEKTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpmP8UJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpmP8UJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD44C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751443793;
	bh=kX7RXv9cpd+EwHLIgzhff4uOiRS6u5VG6hHuINT6zOU=;
	h=To:Subject:From:Date:From;
	b=XpmP8UJ6cNn+9uwx5UoyRMqBMKJwdNuhDaITJ136mheGAqCFQLeuHVdy91UIEHdsn
	 8ySETQ4ARjjQl/dRZRTKqa83el8aqOMOFi9sudiZbS/MDo5X65G64CRG7ysKxj+Xmx
	 Qgmc4rdMVBMrGYGl2B2k4n2wP7ugJRT7Ux1mSOO3G8tg3jGa8q3TWFYd1qmoTU6+O5
	 D9/fD/wpeGszOmmnE8Sp2QIs4z3deg/pqM3H0ikE20WvQ690vZZGtVP+AVqomV1na0
	 lvR48vWgMiLtH1rg58QRW3eZDif3FFbdpdRPOzl09BbS+wxM06vkYc7zV93t1ZzaZW
	 5edR+oe0gCKcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9FC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144379358.7273.8386370097689786633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662624375902851c8066bd113773656a36afdada02849ef42addb792e1c6b5d4
Date: Wed, 02 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751443793
