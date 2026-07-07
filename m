Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483B832E696
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433314; cv=none; b=hQjOOS9jqdKHKijU5Q2JIivh0UaeJgbjMWFZcU137B4uDRZarMsDvlD/LPcyLvWgZcU0Xs07o6rYTu1Ahn+b0qDmqrLr9IdRIv4VUHUMwxID4TSZRSC4+A1+l/yahb1Qby0AxLQDWlPtF010iEKoKlNjFbyWZX1Ettz4NvdNvsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433314; c=relaxed/simple;
	bh=oBBTvsGQqie2cdvBuxBk0Ox2nvhjZyDO0q9jK01cj6U=;
	h=To:Subject:From:Message-Id:Date; b=syWLwVDJxXaVnZGQ9tBnR1q6L5cyU+i94FOkyc/apuREMBMvx5Ji23zxjVtUZ3BJjxAmNuhhC+kpj+9/rjRDGPiG62M4O1OigNJpRhjj2VJl730cz3RtEHhKLDoDdBBCT/UNn5BTLNMhyecNHST/zpyPiJOzDkdojS476RsBK4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUj7J+nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUj7J+nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD588C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783433313;
	bh=oBBTvsGQqie2cdvBuxBk0Ox2nvhjZyDO0q9jK01cj6U=;
	h=To:Subject:From:Date:From;
	b=gUj7J+nfqwe1PfmG0lRV4H9J1BdF3l6zjRTrzlo2OCqb2rIt9ODul8wn70gojA7Tu
	 QAHzeBPzknWlh39NwIS2FB5VF6A3QNksGPTOAVNqjMxRVChvxZbx8UEFQKVA0RKVhd
	 zM11azldDyPqSka2is7O8lxjaNV3brWiYRUXBV4eBi5peYNpAdLGJAaOQbKC6SGJzA
	 DO27yPPzESOVzd/Puf9+xI0OO/EaJV/uaCkhFcGMNlSGxZ4Ginesv1s5C9FxUf7WpQ
	 KDdRBJdPBiQB/1jvYjSQ1/yjxBzY/ewc/THjMBVufr0/VNTyaMYMjIgi5WOCKksYn1
	 k+ywUUXO2W/0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3AEC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343331368.17443.4434395505093818719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83dc83062df45f2fd927e0ab11715fc012efc105055db5af077b7c774a4fb57
Date: Tue, 07 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783433313
