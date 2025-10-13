Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191C82C21E1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760393394; cv=none; b=sVQflsalkXXF3vrCIhE/eMXAz9Vjv4WUDr8K7hnZObYZQIBOcoxY2OXIA6hsc8KXEFK3UGflZIgPCZBf5fvxzSLKars3JDuAJTi+F0Jxrf9UrqYJRGFT4AwC3MkU9Rya/QWQyLtH32S2jfa2NmQqQ9ECU0IgSkD98pEHyY4kKkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760393394; c=relaxed/simple;
	bh=ww0P4KEtV8QJVSODF1RRUcK3OImn8U8ft/uDc4g+mD4=;
	h=To:Subject:From:Message-Id:Date; b=R3/lTMvZPsIvh9O/r1L9HMaSLzeE3+eRW3u9xQ0J9UF5j5U+wRzrwnjC8jUrYXbCmnR0zQp2+hl5CfGWIJdObcY+LEd3JEBSz+D+IxplAC1bBrFi312C7Qg195H+fkjT4LiJtiHEibpMM8bdCRLT27+txZ2yiZR+EhpaIOVLnY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEt7NJ2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEt7NJ2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2CDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760393393;
	bh=ww0P4KEtV8QJVSODF1RRUcK3OImn8U8ft/uDc4g+mD4=;
	h=To:Subject:From:Date:From;
	b=eEt7NJ2nzU9IglF1PRABvqqOL6h1sbi60hqXmfcjao6V0qqnnb56tLmpuRDVRVNxZ
	 tkYOJLR4BIPU533r1L5B0hv0atE2fM9rbP0blsuG82r01DbuS2tVLprnhYg8imrwPO
	 c+a9CgA7BWY4xeScxScbcXIxaoYVUl35mW1W6LXEvUzkhTgB/2QEUaBO1WIU1Z1/dS
	 QUPEQV72EO/pW/qR7qSAa7UGxiMqo1QzyZdePjuXbEfUmqlxyFVuEodBMIw/wTz3ym
	 euxDRokpsPBuIeKpTgXVm/w9fvraIaVvD5NltePF85uRD+uEY7Mt92YnJmGP7sCSYj
	 vhgps9zEji35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90911CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039339358.20234.401159030059523311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ead7dc7b74236b8f81356af8753a0c1c0da12d56aab8f31b50fa658fcd2cd6
Date: Mon, 13 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760393393
