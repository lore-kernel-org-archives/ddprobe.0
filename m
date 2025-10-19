Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFABD1DE4F1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760870993; cv=none; b=aaj0bWOf/aHizkXYL73QZ+lZmXfh6fPJ5MmiRPfte/abm08Q5sNlJloJMky4xP/DaSIBQt0502My51xOMFQ6HyDvFF38xfc4+7DyuOF4m2khgy98MKrUmwgqVC3YiAvzsj+CJW+dCJxKWek8NjmuIvGbFNOzlAplRqsSxVH75bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760870993; c=relaxed/simple;
	bh=H177cIEqZMT6+1X6gcVD7oXDnTfIKzG7ohvHnYAX1m0=;
	h=To:Subject:From:Message-Id:Date; b=pHLsmfhRV4MYeUMHtY2J8sCvYjwnpWcaSPFdRzL463BbdHod/Y4fPwjWSkx4MDtUOsFo6kaHVpozYTJ4xiaiUiy3vd567m9tBY5vbKlKs11eY5JyGD1oIEUC83tKyamf62rpdNwwYj/4kuwCuhf3d71G9miW8f4OgympuJsBClU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDKHg4nZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDKHg4nZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6A8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760870993;
	bh=H177cIEqZMT6+1X6gcVD7oXDnTfIKzG7ohvHnYAX1m0=;
	h=To:Subject:From:Date:From;
	b=PDKHg4nZwWp3YuLxDnTWoW4XtV3+97Se7NCcMkTk7Cxoc+EMTEjnKgmNaEn8uv8C1
	 XeuNWxMeZhGZtc9PK5QsVdvPNeI2NpMzyAZy7y4SVDHrdHdukb+3xMOZGougeVpxC0
	 oeVvKjqIbGJ8asLiQE5odPnwV74iYNLIMZe26LknG74ivSG6fUrfDDnC1m/FDHVJv6
	 fVE3YykNSyOUJcpYBP2JbAi2Y2VQIgCWusS32u6gr0qg58Z1e+kjtbXSwlVgXWqs7i
	 q41+9Elpa4mPyT1ugRzvqzKuR5sDqcyGXylu1SSL+0Fkvl2jIKZcJxRO20Th7cCTbb
	 Yo/miaiIY6wsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A0CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087099357.31832.15254738785618352788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83a22e4648249d39c831e7b5f3565f479a1faf6e306ba77d10efa6119c87243
Date: Sun, 19 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760870993
