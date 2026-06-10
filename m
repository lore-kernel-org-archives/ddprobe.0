Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FDF33260D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781117794; cv=none; b=TbqaFKQwqnpz8/iXTVJdpGjMZOmPihaEGMiMHbyQaGNBZuOMw8I7rxtpi/j2BQ8OCjJ6M+ZoTC5ETke1nOtOvZ0iDiBsxNGOt0NEdwCCpLfY02dQvbKMOwC29/x9/7MQM/jAmtgnxdbQ0qd46moEUJW3M/xKERO+Zzlv7v9B1k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781117794; c=relaxed/simple;
	bh=Fp61eS9pWY9sAlowMU2CIwWV78HzrAI/mkI32eAiQqI=;
	h=To:Subject:From:Message-Id:Date; b=InQLJZLZgzO1ko8lKqHZgpTSTd4ieOPKCcMSEiY9bXEubM61oqmRNXLyeK61zVenYzk3JpWPLHIwMG8ze7TU6um+QZ2H8qRx47TN3ASbxWuPmUpPMBOsFCezJDjs2FoihlTGstwyfluEslDq/zj3yN3lcHMev9Fn2boCfxuUGJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI1I+jw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI1I+jw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2100C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781117793;
	bh=Fp61eS9pWY9sAlowMU2CIwWV78HzrAI/mkI32eAiQqI=;
	h=To:Subject:From:Date:From;
	b=WI1I+jw3Bj+LIHU+YurZJ71XMPAObgi+LtC4g4N9XZ3/SrifvN0eZ1+qSBErF6HP+
	 N/K1YVvxJAou1zqQJakXcGB4kveo7TXlP1ZyJXS79bTkN4tipfSr3qVXWr/14z5VXg
	 58cbROO2CIM1RNZ2WfHnk+96hFkv9aOU5sUSHOcpiYjeKVaIjgvtdWxk3Pw7ys71kw
	 tJZUkgNYeeR18DmL16s1Cfymj0/NXKCKUdvFgT3bQ0rJkcUbuCXYCPcRms8dXqrLL+
	 kxhaPPc1uQmH537+F8k6tnNis0jbGOjlF884a5T3LYWnaCLCH1vckljZi33AV+Wceq
	 PdpRjImxvlV+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8965CD98CC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111779368.17749.12175038059151308990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2589c18ca5a509fb8519b68121694901ebd75d67cc822ec4fa9dd34d9529ce5a
Date: Wed, 10 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781117793
