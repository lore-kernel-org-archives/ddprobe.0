Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47592DCBE3
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788072034; cv=none; b=OClzI4waH8sGLxBz1/tOFczOPyla3VWdLk4IJz5ikWfvsmwpCxb9AQea0nkndg1ybmJ6c+P3+EUOvv5rmUl4o5CKjo89HgshD99ytcJW+mkT6GIodkpceyeBGr8HeUXZ69zt7K3LICeeLVzki185P3ooJRm5B5CrrqptxK4nwVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788072034; c=relaxed/simple;
	bh=FiKpt5Wu9TLJNGU+rOff1WGddgS1BQD9NN80qfmS7+Y=;
	h=To:Subject:From:Message-Id:Date; b=RW1t3uA6lCw0MAtS4mugxdLqk1oPb8XhD1l340WX6HITRMChOLJXRsNdM1wep78scHr6GLkCr0vBQNHKRL0HqKRWmnZqVkpByJHJtM9PgaQYwWosCX1MoCWhKFBFaxgIUtqRVCFzpP2TVWA6gg+E657sV0fSFFcv3/2ZtfEWPD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkBaLAoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkBaLAoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA336C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788072033;
	bh=FiKpt5Wu9TLJNGU+rOff1WGddgS1BQD9NN80qfmS7+Y=;
	h=To:Subject:From:Date:From;
	b=kkBaLAoXRvErr+6yKYUPu14E820x44kbFlF9o7uIJ+KG2k71YfdZH00psvyeU9IQ6
	 r8V9ZizApfhRc7md+9qrvQuir1BC1LHre/o7L3KjC2QZXy/tgXcee706J0f/sTaoMF
	 MkRcdCGMj8sWUC9Z7bw8uQVBImWiddejEC7gDAWwoPZJMh2y8u8BWduBLxf5WK9l6e
	 MW2+Ma5PbqPFBu1YbtbFe8MwL+3/VX+CurDENk0vMiqZDOsLefXB9hFwo1Cr09mlnB
	 iNUbtdC32g5Tn3ucSSwzYLWqpzbQJ6KVO+A3ILarSdTZlT88ifE9Bp9xxUnODoDih+
	 U4g7t7GJ8zrQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6B7C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807203369.17816.16721961147351208899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77e0b9af0f50b27cd4659668c78beaf36479eaf173e7a8da8a48d6baaf9a24e
Date: Sun, 30 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788072033
