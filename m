Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E741BD9CE
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778388634; cv=none; b=sIu6//T3h2e6opmTmbA9zckRYXYcTnf5VHliNi6k0yO21JEBq9iz7nOoWjmlWEdXi3TI5+/fAqPhTVVyF9LEt1L2a83SrhYWjOvz7WdiNL3eJRjOsD7YlUgb+Kg+rUQppESdUoJX33J5JhCKj0eRLG5ofujNYaOszRT8C40QLgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778388634; c=relaxed/simple;
	bh=+upy9COQjPfwTTNWMOsZoZPyD9wFsOeGog3JRwhEtnY=;
	h=To:Subject:From:Message-Id:Date; b=apHsOBCqcrcjbWAEl3e8wp+SbL16gLsf1pOeBUy0JugWqWyN9RO90ZMtzRAv6bmw784JgtfOCbb+Zep6uzCSAHmFoYK8f4y8JARkl8LigksTKZ2qpp6eNwc/bOUCqVJ7eb15xvijfgJDoArJ1nX+uY5jNubVnJH8PP0glV03Wgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYqO+aZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYqO+aZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05C6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778388633;
	bh=+upy9COQjPfwTTNWMOsZoZPyD9wFsOeGog3JRwhEtnY=;
	h=To:Subject:From:Date:From;
	b=ZYqO+aZT515KMCfvQD2Bpi3085mU6A+J85Ltsoz4Zd95iBmKDLUQTqVM5TRpAwcN5
	 CY+IzISU2mLfQOHBj50sAN5/0JewWXCMAG1nZtTCNci4k/W2I3q8kN0gGdiISzM5tZ
	 Dcr2aT+0kSoWBSMeYu6bfHHb1R5ORFlGWT9tr2Wslk7J3qex3HNzjXokIbeEo6E0vK
	 nS9I6qXLHHzl3z8uJVJwZT26+I69ImnusaABAHp3j11MmmydBk27V6/l0qPyoYB7Hs
	 esNqQ+qww+Q3L9dwOOGoY5/Q2BuDoPOoEA03dmsGNYX/GSGtAQ1oFF1ArUfTN3/4cn
	 wJJ+IeB2HfhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6DCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838863368.22592.7916767172646923483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92d3494ebe6f78be36204e7ea07e4e2e49da5b16d3f0273d25c5dbf0aabd627
Date: Sun, 10 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778388633
