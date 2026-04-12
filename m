Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BB741C6A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775999854; cv=none; b=oZrOlbN0UI4kdBcAEVrPORYomTjt68Mp7uaUZxy1IYt2AMMURJ0l6VEDM4RYZCeu0k6ofIJYbE34CHlad1ICaG8JYjx+YqbXz75Pt8Pi7w9KE7+l7f9DQeNhp2ReWNwGD8JI4hZ5TvJvWh+hrrtPE9z7wGIZ3Gs5QSITj58cP4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775999854; c=relaxed/simple;
	bh=eAzj5KMN1sXU7QQVRddxD3x1YeviPcEuk31BxA7oEZE=;
	h=To:Subject:From:Message-Id:Date; b=uWCDV814Yn8+dtnS06zEt3PSpqO5VHBJn8KePR2Ui0/IEX8DcFD0XjrjM4aQNK0GVb2CEK7d6D3gYR0N7zH/PqO9KjXNQgWVOsf4hvHf/JHGUYM3UZqP/u9tq2h/igJBx0ozNINPq3Uf42sErw6JtxUbVnx4GbYX/Kk0k9oDfZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ese4duz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ese4duz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3501C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775999853;
	bh=eAzj5KMN1sXU7QQVRddxD3x1YeviPcEuk31BxA7oEZE=;
	h=To:Subject:From:Date:From;
	b=Ese4duz05oLMIh52hdrVGaPhZm3fBgbymp71grls311Bl09/RrMPhlXSds/jl92PN
	 bWF6TwR2tC+sPgd6qqnXxq3Q+NAvqwcAhf/zG9Oa8Lt6QFCrLK4IDSgqW/+PQnbz1Y
	 sy81pzGtsR6lrILEQJ1IlGoPln9I8DShhCfl8xpAwpfcCsnVgH1J9f77CUC3YO67EU
	 QpBTm6pT86mA2Hetj/9yNhzXGKmQSRnOGmnN4H4n85nlelmMV8WoPwFwLdppJV87Df
	 osqfT9nJ3LMFWgSD/xzkLXUpluU49bKhhG7Oi4Jwdz707LXFSRJNhBzr5J4aTdloDg
	 sCsIQoyuTDkTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37D0E937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599985370.9863.14068264351626199910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23398b8e64f5414234c164cbff2f87044c226021c7d8123c4112a262f400ffaf
Date: Sun, 12 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775999853
