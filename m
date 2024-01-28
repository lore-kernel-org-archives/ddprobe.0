Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A33D52A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706430497; cv=none; b=MdbI18A4JY5fqeq3Bgu15VsYp8x7sJ/78PGSAaY0kzj9sviC5ReYJwgtr/dfxUu2DHMOiUSY3Lt6b7tHTZLAM82Xxu6caShU3C5+4PzLnym8Yam+P+lZgV++zaUWvCc6aB6mT/bE4xMmvnotOxg88zAeQpYKdSAxjkFgdBJ/tOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706430497; c=relaxed/simple;
	bh=5nVGL5RAXixGRVhiocMU9SEkMWh7Gvh346e/Y34YT/E=;
	h=To:Subject:From:Message-Id:Date; b=NaFFAtJnBdi+cKZGqa6bz18I4SqxLymZ8aji4wLW7Gws8ldIDF7yu6QSC6Kboz8ypfpsUK0zhBUdhzs9JmS9FQIKYt3gU6VDgCM2sCF8IXJOLPXmzl86Wv3xlvp8Y93p8BI6/pZTXgmjzrL/MR+lryROv7w5i3YQvYXrLIeYB7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e38VuUDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e38VuUDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D5CC43394
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706430496;
	bh=5nVGL5RAXixGRVhiocMU9SEkMWh7Gvh346e/Y34YT/E=;
	h=To:Subject:From:Date:From;
	b=e38VuUDXBr6hyPUZxq8HkFUTcvzzNFQR2+/Mx4x+inerGtlBzd+TdfoSjuK7B1Lug
	 wO3SbOwm1vtJRItPvPAxnoQpeAqJJ8G8JDtvJS0YMIQIn+UxzWIVf7ndPMGMgZB7xy
	 IZZA1HJokZk6GC1+TTOJqj4QpKS8HPddeWUAAjwNXMzbG5filf3YLfLqmLsTZkfE0G
	 pfFAIZyFSvuvMySejpXkFPN3kVUvXQ62wpZ+D2FZi4yoIrg8SE/0NrLpMeSoV8nTFN
	 HKJmBKJZXeIpCrlrNFPezTzolVTjXecHjrSba9MQNbq+sNROK5VTeH2o1O7kY4UfHQ
	 6GreEszfjkVcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6071DC47DDF
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643049637.8140.4614354147720816331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c70242a29703b5314efd91f93d21dae53f99151ea546873aed049056105586
Date: Sun, 28 Jan 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706430496
