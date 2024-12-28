Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB6678F34
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735412154; cv=none; b=BSP4GF4I3Lu3aaN2uX1HczErtcetPEtmfpw4+6jrTxBx+mjMZmsjr2fPIhPraRh2QSDL7zekPaRYnwG/s/BL+ol7ku6bWK+iB4F8Qw/HB1C8OEYScB5xduW0NVEqRAG8jKFwlv9qYdZo8Um9zJ2+obIYmhI+0bfrB1Dhbx56Y7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735412154; c=relaxed/simple;
	bh=+j9OIWyw1LqSl0TPj4k/+fMlRTAEYPRncMS+diCJPjA=;
	h=To:Subject:From:Message-Id:Date; b=go9GQWIErPGWb0Jy83kQJ5qiaqLM2xQDBQZcQS/AxVV89Vz5Mk0IJyjLjLIpiGF3UYp8ZkLKEA9vD6SlfoabY9HhiwXZ50/jCeWiMWbeWyeww6WA4nemcw+bxgefyYvYVBoCbzki6Mj19EMMxLef67nfRyw3oK1TQUV5BktVsdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejDpjkxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejDpjkxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32E7C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735412153;
	bh=+j9OIWyw1LqSl0TPj4k/+fMlRTAEYPRncMS+diCJPjA=;
	h=To:Subject:From:Date:From;
	b=ejDpjkxaWIeSB1tQZhgg+KpvzUrneb5OehUt4ggU7ivxBKoe3rsWRvLjDQ5tjOHtt
	 RzT5JejlqVC4Lez2CvUTa5k5+lT6OeF4/h6JBlfUwyIip3IGJRJke0mzWNnSF8dhIV
	 Lbj9UrNfvsvM/ToMHcOOvc6onjP2uSoUETzDf9YQJ3Dh1l5GejqLbfBEN38atDf1tN
	 5zcuTFx5//s5c4hHKlL3mYl83ef7hYjOwnFOiuzvFw80GgewDH7E5m0rmzh8JutBLw
	 R9RPy6VL7zRooRvSnbq4Hwk2OVa4cn+PD/p8W63VEBzyfO7hGJnf68YwYu/wyBR6d/
	 4KrNrlMVuE9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935BAE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541215359.30725.10299896414793292305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5252ee0cfc244eb980ac52bba78c1bbfffecbb43aede5fb98ab51d6cadf89507
Date: Sat, 28 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735412153
