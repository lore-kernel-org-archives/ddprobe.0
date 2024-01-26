Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAEF655E5A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706310496; cv=none; b=drntrMaIWEm6yhMvolXU4UGgaf2oJLASWMPiETEoyOuTaF8w7Q7NrhAWlMpDnhEkmvWEqVrVw8zHzIVDRlA79Vw5rF8uCUkD7lKqixksrmQvaH0tJjttVoa2/ZwrgV0HeNfFdd09FrPQVXi9xBzMmAO53c3MuZKxztbNVzIjnlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706310496; c=relaxed/simple;
	bh=XJDzDo+lCarDkLZ65q8DjB/BEJ1O0VnIFRMEL82JMfc=;
	h=To:Subject:From:Message-Id:Date; b=r/ZCMfEZ0Oc2LXQpfMDbL8Xh3HYkxKK6R5BHWaM/3TECFw5HvgXiYJ9pZAFQQPOno3gjxp4mShn4BA3/1/FW3YR6/XGa69u3hhGUJnQvJatLRL518tmjkWmSDwcip/o1/LLpLwFljB2rVzmnEeYGWT9kr4Prg6aSIcOTGhQisBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx9NKsyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx9NKsyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CE1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706310496;
	bh=XJDzDo+lCarDkLZ65q8DjB/BEJ1O0VnIFRMEL82JMfc=;
	h=To:Subject:From:Date:From;
	b=Lx9NKsyuokIgiG9cikcYO/Ji+koYVKo1C+9TVZlXCT42CvlFwhRH663TFaHGZ3yiR
	 E4XIBoU1Phz9UqLLd3UNcpluS4X5pyJQedk6aJAe/MimcSvVuxTH1ixT6lOOtatiZD
	 tTsvnzPJzAyYyT0ItUzLZKUVK2BFfEkb99RG6pYT9wumUwi/S68y8JrO0IzPe3dx8m
	 0FV8OUIOOCbFjX6kvBRsZS55V6PniBzz5DqKyLbJOQyaeuSOknNAZZ1KO+ATXnEdh0
	 0vE28r03k3E2FG02kY9Iqz8mxFj0zoizVr3k7oEN8jXYJ4/54F2JaGGzu75LAk7diC
	 ECPQNcLlyT3fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7B1C47DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170631049638.27006.10750349034825963685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264381e47e56e4e4d7520693485274f40473e30f43b22d45dc531790d1975c8a
Date: Fri, 26 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706310496
