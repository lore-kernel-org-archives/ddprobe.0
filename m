Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6376C4457BE
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788433834; cv=none; b=itpSLFCJQNBOnYDnnc4pKTfql4sN8cof/YWmRyNMiNYE0EZ8fXLw2vrGXhE9o6pZplzxgHMQZaCfBF4WWUEKlU86oNzwMWOz7+l+yIQHWA+Xo4pD402hOd9/H0Qw+cHfVNq9H04gJ09en14sykryr3SNJ417/JJnXWIviLJHoaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788433834; c=relaxed/simple;
	bh=V4H/CIjfzQqHdHr0z4Lqp8rl5Ma/D+3/PqvxpGUQe0s=;
	h=To:Subject:From:Message-Id:Date; b=ZQ6GFsrTOvgjQ8v+/5CZKraO2zMzm14DoMBaV+RRNRqeobQnS1oQgjanMRd2j5GdHCnVDg5uiFHbCsWF+q5+RgJV7zaYccygbma/JH312UIaFp4npet39Kpec4FPvB1Kk2jOU/x/pkfabsVwubpmN6BJuLiQbzYSXk7HA42Erb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB8H5pyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB8H5pyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18DFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788433833;
	bh=V4H/CIjfzQqHdHr0z4Lqp8rl5Ma/D+3/PqvxpGUQe0s=;
	h=To:Subject:From:Date:From;
	b=UB8H5pyc78oHKvpLE86Xf919xacfiit1g1JOhw8ED/9VdQ/ZuAUX1E1iuXvLBicw7
	 a5EQ1shLeph24BE04rFanY10+wfftI5j5Qeq3Eds/zNR7w525jnhfXyH6a+UYZ5vlW
	 XJCMIXR/Bq2B7dPHkjt3MUO46YnhPAiH27PJH7Zw0bz04F/YAmLWi8OP4FwOQQ4jMz
	 zRapbmEmA2o976eb51hzWc0DWUj8ItMpzlyxIIz87OnBcMS7fb7h3DvtgNHWbeD4em
	 xwwObKKec3hchZR0ZE8twpnoeZ0KtD+H8/yBY401RUDWADV3hiBejdLYRHLiMHz+ds
	 iUehw7lI85aDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB2C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843383370.20843.4837873692286663034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8117b17b27f618c49209da012cd745e039752a5ba2b8ea8f553d4cc8744a4c9
Date: Thu, 03 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788433833
