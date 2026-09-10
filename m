Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3E149E13E
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789083634; cv=none; b=l1afZiEOnVmpXng54xVFBzOmkz6+APaxa+CqJAU90EEivnPSDbJKAwgdhjn58cEKrps7jijD1/Tz+Bj1yiWyd3I3HOa5k8+4Hcgedqyd11S8stGOHPAZuk/il30K//5keSEao4AYWspp6qfe7MqBexxxKhxL6kmihAg4cyYxlNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789083634; c=relaxed/simple;
	bh=FFvxbm9pAcjve6YW3Y7rrRXxdmKNmbOfcjOOYU+34lg=;
	h=To:Subject:From:Message-Id:Date; b=bvYNbvkgpq7lEiin3Kiiai0EUe9/pYjVd7AtUbKYqB+AkLCqbW/AQ+wEF0l5Bl0urpg9ULhfWwO4XGG80qajm1arWicdSCEE34g7YlJnXUkBbjSPw47WHUYsDLXHV947cwablKwMB0LrBQ82qwllkaZs2bsT+AezluoeaaeZf/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXrW/mfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXrW/mfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70A0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789083633;
	bh=FFvxbm9pAcjve6YW3Y7rrRXxdmKNmbOfcjOOYU+34lg=;
	h=To:Subject:From:Date:From;
	b=ZXrW/mfU/Fhj1XsOz6v3jk+sbt3Rgr5mKoVFglhtiZ69C8W8zSb1sVneXqhJZbISI
	 qGZEb00OAAh9x4aasKkU28d2dsCvi9/6L4OefGwMgoHm4aNHE/efVA38A08aCHRPYo
	 C3Q5gnGDFx5T4QPHlwbH4GNR6opXCoRpzjHBy9sgJXfXCw2E6RzqllKPzC644DsUD3
	 mSPBXqtasGG4Ead+dvvnlwzeMEFjEhk+z2qPSqfQtqdIb9C0u4e4PQDTV3YSIyD8jn
	 iOrvU2ZWfMgAJ3JCcDci22uB7Y6xmJU+KSNDgsVyQuKoYUvqGq+TecHA6h1aCLY4ge
	 nnUMVeHGyp/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71AC79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908363369.2773.6963251241296138224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed0317c0094fdb16a6690df2e6d49f410658ffad04a0ea548a4c4793cfd8287
Date: Thu, 10 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789083633
