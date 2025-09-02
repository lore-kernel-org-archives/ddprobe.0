Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20807261B7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756810794; cv=none; b=Co46A+hxcrsB86uonHqge25fczejxlBHOaLhJWpfI0GAZUetMeNbTeXNwRGMWddRFBbmDt8EsInOK9ut2DTi73u/+V121sSyiC7jlELWk+RYg3PZbLl8322v4SzmZDdiAlgGxcY6/zHSRXwTQ3Gq5Spu6fSDQTZ9dMyUDUTUNX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756810794; c=relaxed/simple;
	bh=E/N3Q0nNWgWYjGL2rxHj7Zby31nIzVnL3JNhIAPRWTc=;
	h=To:Subject:From:Message-Id:Date; b=I4EJGYNj3r8Sm+PmLtzJeXopGGUzDbqiefJEqqdyYrGMjTjLjEg+brw5LiiMrox8Hqn795nBAPl/oHjpn8m7myLJ4BmfqMBQNAMdCYvoy390tD+IaWzre2/86kaGg8iqiuElOCnpR8VkxAE/6JnC6vmDMQmG9LAj6OF4xsr4HtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWzktyU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWzktyU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38ABC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756810793;
	bh=E/N3Q0nNWgWYjGL2rxHj7Zby31nIzVnL3JNhIAPRWTc=;
	h=To:Subject:From:Date:From;
	b=aWzktyU+QLLaHebLKLv8rrFdbdS1KprHsqV7D1rAMdRu1g819J1hqjLa/ZM/dvwHQ
	 DFU2eXa0pVk2pmfA0q7Af5sDvGX/8ALXfij8sGUQbIIPwH0MRnmQp0NFD4NnUGEKPA
	 coznpQv0sj3j0c+cd0ZyJIlVnfWwFfCEkte4DF5EvxQUVp9lC+3FSLMfjN6rs5QSCx
	 0D86inar9gzPJ0FR9AcROOd2arBuavWNWay2qCzMh14x2FXZ3fsuUSSj0isxflla79
	 4EMpEIPU3UMxbsTvsqLE1dhYvDdN9Cbue7F8vereClgP6bDjIa8Swn/jypjvmFx+2M
	 hKGo72/wH2I/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF05CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681079358.14940.10729434163830699491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcb9212538c82446aeebcaf496ab439896717caae28758170970ef3001d6b6c
Date: Tue, 02 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756810793
