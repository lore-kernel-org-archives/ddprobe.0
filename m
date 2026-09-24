Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337D73D47A7
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790266834; cv=none; b=SZtCREQVFbUqkWNNpgTzomk9LMY6KsdhfFQYZThf7UYmwO/yWAj6Z1YZt9+Y7aJScmCXEiHQzMe988oHQEh5SWMS7NWF0S91J7mER1OONM2yVU0J7arbxVcaXV/l99naWo9jCDaZ4Smds57Iqd39XaTCqPow6nvcSaVBulnguM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790266834; c=relaxed/simple;
	bh=6rFoDm1mZEOW4kypo/MwU0HMkNU6UB2cKTE5JbmyAH8=;
	h=To:Subject:From:Message-Id:Date; b=KCINfQqgBl0/lbhdyxl89u8Pz2nDPB63xLhZEjDM2ALrGG9CILk0MDZAXL0B9ndlyhYb5zNfxcGfJuvNSxscituJIIbOWWQOJKn1+SCrSUeqgUOYnYVk7r0W2DNQF4SEWZLgabF77sXkepCxv/ht5ZlzX40idfHOMYNNpu6boqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcIHqSrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcIHqSrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52F5C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790266833;
	bh=6rFoDm1mZEOW4kypo/MwU0HMkNU6UB2cKTE5JbmyAH8=;
	h=To:Subject:From:Date:From;
	b=EcIHqSrq9lABowy37ixSwBxMduCF/Pfv0pfHS2EhfdNw9X7nabxd+E/PdWLHtu+n7
	 bekIz4V+fEPxO5+8LSCWkN1RGI6iQ+V5gXTIpZbzGaQdsZuinstN5nsN6pKpbT6rQJ
	 JT0J6lLGQpU+BZ+zw/VQFg3/JzcLLVXgRbCLwTxmdPWTet/fVdqLGxq40b1X5rZI/g
	 jpDteOcpCzs3qqypM7SVisPpfXebKtFCQfwlUY9qJlztejSgfa46z962E3y4QmZXDB
	 OS4BI1BUla13qxkpAeh6PJEwWS6MXkxXinL6k9KKBpZAdm2mMEhr4rFpI/JUP5dzrO
	 8SI2r97JCMBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B6C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026683371.32360.16246734554398134172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b46b9050d86977e395bef34eac6f2f5521e15fa86a2c023d72e0596e6fe1e26
Date: Thu, 24 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790266833
