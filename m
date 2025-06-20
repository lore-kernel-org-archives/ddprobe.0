Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391D517BB21
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750389594; cv=none; b=glLv5+O8wsJ+LZkHA396as/k1757cRoAHxG2rKsEVZQgZXWbQwANKi1GH7E7bt1RoXWfVLAeESCayuhTyqb93HlNhbvlNAj+XLNv5Tj4NhGYLrbTXSM4mTPoYWBVQOvpFjmyzbx0ipIwW140sH4kj7CIEZJgzHxYphSPBLcZgrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750389594; c=relaxed/simple;
	bh=dK2AOaBsIEKHonDklkqK7cEj865tmKTBRtI7T1gIEjs=;
	h=To:Subject:From:Message-Id:Date; b=q0Rvx0xQmHHiGJxWpK2mTlq51tei7rDnUz7RNXixmAUW+or2R1nc3CoJQVl8c0IcHXIq5Cl+qtrFoU6UyLeobbvTJHMyHH8b9MAoghu2fLoIEAyNzf6v9HOpc0g2ZhoFImJirjLeArD77XahInpkWXhuRmWxT3drGe7kmMWlYj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfhVXkOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfhVXkOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6B3C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750389593;
	bh=dK2AOaBsIEKHonDklkqK7cEj865tmKTBRtI7T1gIEjs=;
	h=To:Subject:From:Date:From;
	b=TfhVXkOYOY+Ic772Bd1g/1L+hGsosJGKEtefULmMH4NfOIILb9Qx9MSZ9vPuTw9eY
	 XPsp84MhKplSvmqBIDidfI/OlzUOWkzQJfIY+davgmGDwdkUmx1pqmq6prmQc/6bI5
	 QdaSQM/mzO946Z9MNEO4LmQXV6ZJsIxSo3ll1760xHzcmxoHC4t0IxxCROqFnoodJE
	 akkmL9L5tMsa7TqYY+A5fn5VsudTZTSg0gpyOxY/MgRrVSEJP+Qq2yhzeLoDXYTI65
	 FlCwmdhyMg/d0GzLFkzPlRwnRNxBxH6GiM6WXiISQ6UsNnUoRpkd+L8ZMxOGPBzZYe
	 uDf1iVw1AHsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69CC7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038959358.18178.4523013740803371153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ccc971771c5f335b98c98852c59d5a1ad4996f6926aa81af186ec3c4bfadb2
Date: Fri, 20 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750389593
