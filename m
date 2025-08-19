Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC7528BAAC
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755571793; cv=none; b=mAOrQqEYAvW5BBEM6iPhy/WD1Z5FG8MtK7uRdNTqKWb7FQirRUF1jyRYIFKxj3h1cmL9+NsEnSi/B8VqilL+E0CE9diM2WNFw8HJXXL107apXRDLS5jPcd8eS4pqrCRjPbyqQ648eyme01g54+HWqd4hWh38K3sacB+K62hZj0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755571793; c=relaxed/simple;
	bh=mgypb9gjIDS9H47ZKawR58iqUyV++hDGSZTt+axN6CE=;
	h=To:Subject:From:Message-Id:Date; b=cWnaYDfdfPdYB++CCL9uK2VmNvgidIgLB+PCF52q6Kg/MRySx9NK6AOT1cH/hskLF4ApVqNSnKOV8oARR0ODs33AfbBTd9sJczA68D5uqA6F1Dw2wiqMAEJ8to4lL9Y+T83Cl92JMao08TJqhkBbIuhKEa2HucsoaPFA7eALxws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJa/kir+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJa/kir+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82D6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755571793;
	bh=mgypb9gjIDS9H47ZKawR58iqUyV++hDGSZTt+axN6CE=;
	h=To:Subject:From:Date:From;
	b=gJa/kir+4zosbxbJ/bt/E10Ga3Ipa7Nk0/1AyWrdNs//OV1iHTzLX57d3yxI/ZAiF
	 Dj85zrqpOcRc9EzMJ7j5egfW7gTeIIIHqSzqnNydw4uTaPWNvxFAcm/MaoG/vLvnyh
	 2KFe2zE1B9hdI+qiPaDSLF8YFroGPmQ6nU6THH8Hm9f34STbmii/l0G3l2+SMLs4VI
	 CfopNyPnEOFrn7VyysIqaOQUpKROluJKCjKhvcY8K2spnIHE3VzsBxbrtf/zE4mXPp
	 hmIxnT2Mx8sW0lUFdK4WrCymkJz0g6XgW2xdsKaZ7c2WF+bw7hwAiWfOzUngfLaJeL
	 ycyz8ziyjkybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AD1CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557179366.28841.8351463123243875512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea7ee95921c5a1da062b0442d181bed9369332d6a99b2fd9651974940c67ed8
Date: Tue, 19 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755571793
