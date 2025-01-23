Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641D51BC4E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737660354; cv=none; b=O5ydcIkJUkJHHxA+INB9Lri1LDMiNJah/DBju+JqSSn804GmcjqHJJVE0Ei8NLNr13g+1fq05wg2nRrpwz4PYmGqOtHDyZisSsQLSho7LZsELIfnNe2TRJYz6tBfhIJQ/c5p1Fa5D9H8dl2cWo53BEe8QCzqhWjhnJY8oT/rDB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737660354; c=relaxed/simple;
	bh=lShNsISvwBTBRrvZrSbThnuRkdFB2IPIno9vDFFPHrs=;
	h=To:Subject:From:Message-Id:Date; b=fMZ3+M8yELkUygAizXW57IiNNlPw8+3xQSXQVTp801h0AmKRdnVaM92P6U8YZ0DP8SC3IGyAHovmSUxClJ4URYb61/CFw4DZ8czfMXn0R2TQ7OaK4TiTfQxecMPhjfulpSXDle5FWfANWWWFPjJn1lv1vJKlPGT2qFMJPG6dLIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmIy9Spb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmIy9Spb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC60C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737660353;
	bh=lShNsISvwBTBRrvZrSbThnuRkdFB2IPIno9vDFFPHrs=;
	h=To:Subject:From:Date:From;
	b=tmIy9Spb8KUFt2FcDRjwP0sOBqc2e/AauhLHQytvvt0PknUcEk3o3YDwTU2ILnmv4
	 J3OzsLjKlYC7fWVQYzo+/FpZVLnuxsXYwW9WbaoBAaE4urhFZv14wsz2VMYqHfIoml
	 8ffL2Rl4AK/KjuaC6VdGMOlnNZ9WxKOby9LmoC/MQYzodCvpJ9oS+35bCkidO6Iguy
	 8kdwz20Ury8o4hzvv84eNLqy6OkYKQ6eX9QQczIPS7XBsV32mW/20DybkZLXDwoS1o
	 xBoBKpb+VoRcNwo3ylSdyz00p1gVCoHE8GuPSayDc0nH5nc7EOUcj/+iDepova2LlN
	 /JbMPrsVL80qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5E2C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766035364.8122.17969930040575583699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0072b50235681f3236964369907fcbef3039f6c72ebb1059af90c029fdadeb12
Date: Thu, 23 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737660353
