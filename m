Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A11A25A2A2
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759660794; cv=none; b=mDllpMCD6XzGqjtTF5eF6yKLBEMstEMrPvkdQAtHI/Qa5ldG2cGdZcYQW8Ym/gqSPwivzIUiONb8uh/+R8X8ZqHrCI2ehTvqQ2jq+q0cL7VkkXmvfmo9m46myf8ApqAJn8ptepbJj+ybM6RX7Rl5h+GUJfzOCZV7mlTTmGTFkEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759660794; c=relaxed/simple;
	bh=cH1djR6wHLlxBeiRuhTDS4wCe86/41yQNwbiuV1/lv4=;
	h=To:Subject:From:Message-Id:Date; b=ZHCm+/gbg/MwzCUJXoMZTLnZrQaRvzlPm9w6ABpuVeqacYcmyPfioSA7HP9crrJE3ZH8BI6KN1AhTfv7C2S29LT33QJinEQ7LnJsDymiQYXGH/lgPkzECuGx8Tqjf5jqCKU+/lthFyJmvWcpkjL3IoEtGQtTRuN0/YWbCUMFSzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuY8P2mZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuY8P2mZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759660793;
	bh=cH1djR6wHLlxBeiRuhTDS4wCe86/41yQNwbiuV1/lv4=;
	h=To:Subject:From:Date:From;
	b=cuY8P2mZeOCVwrSb/yoQRkpAKNTOM351eDGa9BRbC/UoxbJ+XzEdAnZp/4aW0bnf7
	 ltTfD4/25c45S1B2hv4Rhaab/KMZj/FZAnOXNphxCtPvhD+ub28efbfQN5Q57p42Vy
	 3Aab3VVtuRk/sH1WoVDw8zL8SQQPVxDwZuZmuWUF3ZXnBzKzIIT3zdFOyw3btyU/cZ
	 37QzAyFWZb/0HB/sh3xbFsyu2XkodDtutn8e9Q54f2k4pihAMWfYOMNbCtx1Wu8VZ/
	 ui0pwDslZfnsBxmfNxSIkLjqklsZtrE7wiTVUIAkTGytUkpHuWJsGHMeXpKWY28SPq
	 x7GfXWYGgHIYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92240CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966079357.7826.9820158055793417210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a8a1e3175189cf3474d76cb001c064e5cfd01db8a2bf9f50a236d82552ae1b
Date: Sun, 05 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759660793
