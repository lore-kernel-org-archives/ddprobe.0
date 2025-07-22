Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1671027AC50
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753225794; cv=none; b=deED0lmEs/faDuM3lkZM0csX1qG7pAjzfU07a3gvGt5iFvTcJmSnSr3HXSrav/LNb++Gi3TiLNXgzomVdGfNG/cx82y48TEzZYZQs5r2iBJ6lDKEsYy3aiS/6BDmj5EZp/1HmNhW7WqhKe0OHA9JjhahFpMVj6FQCDf8VGjM35Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753225794; c=relaxed/simple;
	bh=8bwhzkyt2I07tbb2OcRAnLkMj0tfHI3wI2c/03eUd5g=;
	h=To:Subject:From:Message-Id:Date; b=XQvujAORCQIELWRUtT0a1iLSh/4HtI29bc2TCfhiE0UKwVKQUtPOj6zoqJJ7i319HU04T3a9uo9FXk19R/aDnsDb4sWAma6FXL5MN/l1BHJSogGZ6VCc7yNolcQFVwLr0FgC/SIQqS4exzkchbws5qEV1XXrTG6TuMK+etySzSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuRzEE3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuRzEE3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753225793;
	bh=8bwhzkyt2I07tbb2OcRAnLkMj0tfHI3wI2c/03eUd5g=;
	h=To:Subject:From:Date:From;
	b=KuRzEE3+jbo7u0jiU6OqFovPhMVt+Fp2gBgZvx4dp/JIPDSD9tD5KBiqmrs6Nss7a
	 WTcoNmZtr3SxFDBgEAjfI67tJ9QtT5sRX6yyBa26MrTDhFHQ8ernVzMemhucYRZo45
	 UCRL47FoptaMp9zsto7JfyHTXJqO6sX1FWCkT+Ux5Q1MGwPfJfIxJ8gHWF06lrepyY
	 nPikq+iFyCOUXYY+tFU9mole+jCmSJvL/qmJEo2/d6wYHltB3EAfs17X10Z0peSQtQ
	 VTnQ6KmdLQY71eOWkgeAfRthItXuw6r/ew9VNfd8n1uchXd5o34eDI2s7UYEfw05XD
	 S6tbMvJF586cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FBC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322579357.12220.9942232876050840770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1985de9555162b788651e83fff90ec1f9eb655fc22f6fe8183352732289eed43
Date: Tue, 22 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753225793
