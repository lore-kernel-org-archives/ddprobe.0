Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F26215F63
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734704154; cv=none; b=UtMfgnUKFhyU9KMNirMMu8Gp2B93vAfL8I/2V9GIo0vDyr+tljFAooDdm4lK7G+W7fmuH4Ob7fObVHeSZ9wBxCjsJLcifLbHCECahyzdG+QLL9G/OO5SxQDEDBPGyYgjK5CUcKk7dTWc66iJ4nuEkxMle/t6WykOAeasIuCP88Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734704154; c=relaxed/simple;
	bh=MQRP27KfCxu0XGmZkupnwt+qCD1OOJ12SVuuk2e/pdg=;
	h=To:Subject:From:Message-Id:Date; b=Dqf3oBzNcf26Bmjwy7n9O81h8hiXG05qRzyjeZVOvUTEjIAMIHgl5x+KvHZ85QSpVreWlvr/ukWj4R3ZtWuI4d33mlUbtEqVxBmrB4X41WCBOwQMgs9BwQ0sgV8GDzu4hF/pgK1CPmGcMBsTg9m552aCrwgm/bqddcfGpOkTJhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEPznWoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEPznWoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3D4C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734704153;
	bh=MQRP27KfCxu0XGmZkupnwt+qCD1OOJ12SVuuk2e/pdg=;
	h=To:Subject:From:Date:From;
	b=PEPznWoW3PeU2U36MrhBwbqUyCporYv5XuEPWutQIOWll2yaCUi6XhbuBeuLSkCru
	 QPXK/CoyvDK36x9RABKAJ0QkazpvlHSNO50/+BuiF0JZNPobxw69DRQ4RUlVmM5MXK
	 98aiGRTDQ2BiKDKgO7TifJ5ZJwhcHK7l9jIr414Qv1Konz/8n34HchXFC1Yeb2x4YA
	 2y2t4uuKT8eQi5rfTCHGVFSLkXgkJK2tkab4jyQsq7KQ9ea3S0QESbOnx685+B371L
	 +7OWs3j+4PX5x0ZRxNO3kC8VjWYH/44inJn1MA6+jzZNqo1H451qleX2rpbCy1nr3h
	 OGzaOvUVW5zBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3D5E7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470415362.29257.9469323099277149248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287372e806bfacd909cdf3f8aa168a190e97bf0ba16508eef7992c77e0b1176f
Date: Fri, 20 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734704153
