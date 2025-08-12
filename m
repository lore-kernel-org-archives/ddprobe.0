Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FD41A9F9A
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755038394; cv=none; b=SkJX177tfLcXlyomQcwGlUW5oyA0BZWdT/DOQZU5m/NS8PtEUN9MJJaGtau6rNJDy2zNGkKx20VTXwQDfxRkI5iLc5E9aGZYrZ8xlE6824wXtoZ7SrXNDBNubrdRni2jKIeFWsmBv533+B7hG0UZ0LoZJt2Mqhmd8BNXxAYy8aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755038394; c=relaxed/simple;
	bh=znyz0PRw9mamyow1+GtXLBbkLXipAlMfHJaEhpuDKdM=;
	h=To:Subject:From:Message-Id:Date; b=qKgLPhh/+EAQDl6q17vzHKDz8+K1NlRdXEF7fY+5VNEYbxbU99jB0BIbCOEHOtQGI7vHPfeCaPoGDxixXy+lTNXqjKTZ/URXV/UDOvwxIfvND5ZKLtTkJgRUV0IZ2/RG+NcrPEhACMJ4sdie1ybGNQTsa7ybWrysagKcpAgiD/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdY+6sVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdY+6sVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D799C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755038393;
	bh=znyz0PRw9mamyow1+GtXLBbkLXipAlMfHJaEhpuDKdM=;
	h=To:Subject:From:Date:From;
	b=GdY+6sVuy7G1CaS0axDu7ByPXHHozzN6cZYNblyCqVKl7JLnZAhnA/+h1Zjz4xb96
	 W2qMp1VIaU45LNKXW4Rn2O0GLON96CFIU7kMbq9gb2JPL1GuVACzEfTI7eON+4WNS5
	 gNfM8Q/AJhaRpwzmZPZl1SpdyYunH76Kbq38VpRS0Icy061sbAMlDzoQVksb7zywPJ
	 cq9fkVFIBG1tQS0TM2OsRk03R3XCxvH/DFROUeY9/WkG8fhK3oCdXEvSWyK3j0+4HH
	 F6c9FWlyCCJhQosGF8daw55OCjP33dIx3lE+jSw6Us/lNmDf3x5CPst4zcrpKSemFu
	 WnvnUnN6KpD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F580CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503839357.2061.3841504194367027429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a0a28e3c4bfda20d04087d5aa536f0f4fd5c39a8c2036ffe425fff3a1c5b51
Date: Tue, 12 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755038393
