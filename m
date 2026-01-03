Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349B0201004
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767431634; cv=none; b=aBOnb7gUHoKFRUcY10w5cG2FBCk8ziTowC+bl8P2qyXDWFy2Eu54EewWqchRoYdaE1rCPt4QB1XiKs3fSAhrhUwT6BV//cBCQdki9TypuUiy5WA5kofS+IZCPO/5efM7ZtOJ5mJF0+UnUKVWRksl4fJM2V/OPVMgrt0wSb1yF+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767431634; c=relaxed/simple;
	bh=psGnRjH92aXYKhQr0UHHPLOSVBAFIul8W0EWRp95iA8=;
	h=To:Subject:From:Message-Id:Date; b=cXXlHK52ZQe2Zg1MTQqknf1VDBZsebZf08rhBoWpgI8UcnR94LDJq+oRQcjSZ+2F2MT+UIWIjQdoyceM2toXoptKEOHSlEdxOSSEfhZgi4MdKdkHOz/bpxxe+acYerhSPDcM6DV5jbfiEz0QcaHQc8sU6z0k6npMWMm5T/yzwQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPJOB32r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPJOB32r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52ABC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767431633;
	bh=psGnRjH92aXYKhQr0UHHPLOSVBAFIul8W0EWRp95iA8=;
	h=To:Subject:From:Date:From;
	b=LPJOB32rWHwCTuLuisYGdNZJE6EJowwaRrUMGa7aFfDSDbxncifPA+nAvrYxOwv4d
	 YInKKGT+7l8vl5ySkwZJC76SlsySmJz5qiVw8Kha3VJXkOwipGzCFZsqsBw6N/Kp8q
	 DdrwGH2qvSuv7oZGM7rT7Ic/jcAX7GdVxXW2QMymECkeSzrcmEqj7FUESuCoZaZkWT
	 /Ua7cQtvEqT584telU9tS28jk4R+npPxOFte7S+dGPiz0G+yqgFXQUFviBFG6Q1FkQ
	 SoQvnlwEyrQeDDAuYGWFXo/9CO7U6pctTqJgJiTIeQRGFPPPnZFUGOIDTeRTlzQH8W
	 q9ojq37RgjnGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94271FA374F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743163357.32654.16701505481917000173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768a031a590a7bbcaf7b3575c2f6eedb67d0f12f9a67e7bdbd92f5b7957225ac
Date: Sat, 03 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767431633
