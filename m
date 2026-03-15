Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8EE7080E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773562494; cv=none; b=cjmBYj8LcmMZ+jkgD8tQURKaImvJzJRktxnczH4HNzWf8LxUlklEGtLyTnJDu0EdWiYoxq0is4ojLssLX9pMHTuf8s2/tYel60eUK+TGccplrWZ610euAO4cnKuGakUqBUjEKrQK2bkAHDPSUn9A2mbyd5kcecsqg6MFfwK2/Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773562494; c=relaxed/simple;
	bh=G8wrK5PgsT9ImoGhPlU6h3tJLVMzyqmPW76GuoVF0m4=;
	h=To:Subject:From:Message-Id:Date; b=SsachwFoYB5jxkDtJWCRMwBaHi51BdM9On9o6YcD3V8UBmJ8yiqMPKGOWOgvckv8I1EVakm5GN1EPwzeH87Urg2r8MYDacggfoM66UMbmMplPDb00AVrSED+kDGiJ2I5rzRfz+4pLu///H42OAJ2Il6/cknlcYX6jc0XuAdh6X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmxYHxLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmxYHxLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773562493;
	bh=G8wrK5PgsT9ImoGhPlU6h3tJLVMzyqmPW76GuoVF0m4=;
	h=To:Subject:From:Date:From;
	b=DmxYHxLMhtWFh8oPA/XLQymqxhuNR5AR+IkJ2RgTHL8RK6ck+aZX9gu05bRe80R3i
	 2YA8aLekeEXgEs0AgVs5w08BTQwfSaJVOozNYqGY3H6eodjAUFY3qMrj2riBwkafML
	 7i+5MlvfMMPq/gvgilTBjfsiU0P47k3WGQXuhyjTojmqvdEEUJgf0056wNkezoKT7d
	 OQYiq5He75tU2y9uta34amdClm+ppwOUBuhD84+EWb66yq+kanQ3lObo2USlG03HPO
	 I39032jL3NLJSnyo8YHJEMgbYy/8M6oIlod6rASHvbq/MqioEd3KxeHhPNAzlBU+VB
	 lfIIDGGpO3b8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D6D58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356249357.5872.1453817975292069208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffa88895453f8239ea8e5a7da8128a673713c2f2665096f9b1fba2f8cbd88c5
Date: Sun, 15 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773562493
