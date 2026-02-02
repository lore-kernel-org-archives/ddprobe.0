Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B55D35972
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770037434; cv=none; b=g2SPBozYTxSAxnNcSzPxfEYPykNjaNEIfmdQIOuX/PRvn0W/At+FCTEFNo0tNqrd+YUWzGXoD0guq50hNCc/Vl0IzJeoPEry0okf8m/zz3wAfx98Uzs2iawgrho52uSCLaDaUuF2tYssy+reo99zC+3UBKOxJuVYAut8QJTLTmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770037434; c=relaxed/simple;
	bh=us6/e6wnzyK8OcD5Utza6LYsE/7SAptu6jLF3OdZ0Vk=;
	h=To:Subject:From:Message-Id:Date; b=mizKHNzgpN6C5qKU9Ds6XOVPO8dQcGfNle2DqlVvllppk2JsMoEw9W4TdjHmkCoJeWQyWoz/b9SYheYe3cNyzBiq3vqOzY60mCd3FekEOx59ubwlUgv1bOYAwv2FvU3vJ5id8Aqnp62oHaVPKUdwKNvd4skc+OMfPi4KGnK5oiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8iLg7sV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8iLg7sV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE1C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770037433;
	bh=us6/e6wnzyK8OcD5Utza6LYsE/7SAptu6jLF3OdZ0Vk=;
	h=To:Subject:From:Date:From;
	b=O8iLg7sV4KPxk3eM/13s9sQK+5LX/Br//BJklROVlthI/Yy8E6ZfRVDU6H8y5Oj9j
	 LmS1v4MmCMCJKvJxjjFL6TJTgcx7jIi+gwdBi/ifML08iJsbanZcKfm0MYjPuE5WeG
	 TGbLDXa7l7NH+cLRPdvzSiEg7RUr0JBXShShMfnZ/0sQwbHvJfTsZnfpZ/ECwKHfEK
	 mqecxe+ETfOHMSnIFlmImM3F2tWxEdqLmu8x25+RZhGr+NVkzUT06hNKM7ek3d+9zk
	 uG1u38ea4IryGe3dBaVhPh7eMh5xj2TENZ+O53IvcJBrg1IRvUkvRmsVpUpLEssH3D
	 lOYtuOLUcG2XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E0E73164
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003743359.4181.13403413086628667001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec4c97de93d0dac8b05a1afb2ed6e6d295f93c9db4c40f7eca45f344d5e373a
Date: Mon, 02 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770037433
