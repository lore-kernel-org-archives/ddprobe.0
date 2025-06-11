Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303F427E7F0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749653994; cv=none; b=D8A/d21+6/YNO/noW9MKwE2fttx82Alx5GasJt6MKe9vk57nyCer5QiwY/P0RxiUwW4g+plpTq90OG4uZeqEZWX1+S3dbt2b/8ipaWVjGMYDTBNNKH9QKdQ/Ml812WljhthVioPdxRcy9BP9YAtGUp5r1msd9bVUVzAMENSQPdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749653994; c=relaxed/simple;
	bh=nIIPGkYbhcA+gDE3iLWpJxQtu8YmuWltp7t9gS8kNhM=;
	h=To:Subject:From:Message-Id:Date; b=RWaQMJrbQHAOOKf00kU22pE85TRLn+IljvOUldtijeGZK6awoQLI7Os4HBtfgaC9JxAeZWkdXpFXEGzUza26UQ1HmTF3kLuRSJOiboNhRjYEj0ChZeBjjI84PVs0xAhKJnxg51RNAEOdRyipb1MpjAjWosAz3HllRcScAfTWk+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrHNiLkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrHNiLkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4428C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749653993;
	bh=nIIPGkYbhcA+gDE3iLWpJxQtu8YmuWltp7t9gS8kNhM=;
	h=To:Subject:From:Date:From;
	b=IrHNiLkzR3oaBOqdET5upF/O8lonm5ZXtyY+0dyI4o4y1KQnEW/ahbJJoThbce7+8
	 s8chyuLNosw9gbIwzkurU22fmKndCBwJA7Jmd82ulzIUfwud+aLelKJNwxVrmKZ8WA
	 yc9rYxw3IYvq2fQhnkwOf6Xz6+7KNyAoRIciKW1K2H0d7X9A0KfYnJLVeT17kUKlUj
	 kPkeikagG73GapvjannlfIYal1lIED/swcbbPnnZL7tMr8HO+l+5rvc33RYi9Q7sKD
	 9TkoaOu+OAiE7sYl0lxSRNMrdcx5FIvKygYVDGHTqX/N2eWVOZZw3GT1lGauaz+YVE
	 Twr3BLfNG4Frg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F201C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965399357.17486.4437261581882794699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00cfac5d828c6c0ee40941636d2e85c695038e8cec9958183f41d656f499687
Date: Wed, 11 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749653993
