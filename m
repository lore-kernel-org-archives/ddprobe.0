Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28832218AC4
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771020294; cv=none; b=Ac+TrKTaAe2jbY1WkPM0BEZOF5gcooouj6H1gSp9Nyk2l2XkD+haNAek0daQ0/xlQ57nj4Dv3lKupCIOz2qp/BUKdvR+nXIWQ9WHmDZ+/RzKT0HEknDPy5tcTOt4X+um4S+YS0KbzVHOtq3WpbnLPzEUWrUh6gpCS3H1edIAWt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771020294; c=relaxed/simple;
	bh=Otmz9nSNBB06mkOvOeLS2/EMGSwBLkCgePPlbDe872w=;
	h=To:Subject:From:Message-Id:Date; b=qErdnUAr0HgL7jM52dgdcxy3pgPveraVcVHFsxr/hwKlM0O9UGC0daVRyAALB+HL/uWT+xCRDkhqDuIdSISt1GaAJ8QAIZhMO0OD73or39mkJNV95XYlJSdiW0oRIgLPPBxNs40QTnFTmgG9VSEiDyJOxIDimp0bKbX/HgkDlgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnVvbRGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnVvbRGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B42C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771020293;
	bh=Otmz9nSNBB06mkOvOeLS2/EMGSwBLkCgePPlbDe872w=;
	h=To:Subject:From:Date:From;
	b=LnVvbRGjSx4satuaXZk2YTNuEVWd655h7BzxO1KPYHO+L0En8PonFwCUsLzTPsTKi
	 Y4htlWrev8i72e2J5ptCTstH/RHZ7p6oKNlWkLJ1zq+T+YOjkhUDbVHarlxDyGoGPh
	 VCeP2FVnovRuJsaHprPg9Zv/FkZ/3VcHYV+84FBERzjawCkrTUSEt28XmhpDie5afe
	 Q4pPW10pz/1dsuRyur1FznS47LxWgGUG0IkfxzVKbjb0VGFm5IwGSqK8FXS/aANY9g
	 1Kx46X9Umszjz87Y7kUnh7gV2NZPQ0mKlRchxZfhA7HT3TfzPcYDzuaQxhxWNZNLPq
	 ccidMOcR93qlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD02FEF99DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102029363.13820.13573403403888155437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3acf9e337cc83be2c7022415dddab33ee9d15b74dd967b9e6564e5183927ee1
Date: Fri, 13 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771020293
