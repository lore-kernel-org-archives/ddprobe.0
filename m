Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591C14A04
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716683663; cv=none; b=IKGT/O9q5ywaWzQ4FM33r0KOnN0S3r9KFC+btgsPw6qZwf6ptR+BB9/bG6N99Z5hRMdDlZtUjxKd478XRO+yQa05Ytwic/Lxu3YPTi5MtJLlL6LfwUjbLlyyS4nSfMQzn3xKTui5z4innCNqM8ni5VnUniVE/6N6EDmeCwok4zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716683663; c=relaxed/simple;
	bh=vVNZKnwWY8LpQ4pXBhJLEsW3wjoPZgWROpquUT/1FWc=;
	h=To:Subject:From:Message-Id:Date; b=ndgl51uX7Tnn/Tid6hWLO1A8pUGg/WouRgr9ylvfAUct/WLJWDVJbDVpratAHJnznOe/l+gskit/MtZ5CCBASyyJpIfGznpuyzWkq2b80ndvaIJmHP2OxEnS8Auf/CxgyODZI8OrqkzusunP41n4n6J7TgPrl/iUTbyO/BQKWUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnpDnFVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnpDnFVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81B2C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716683662;
	bh=vVNZKnwWY8LpQ4pXBhJLEsW3wjoPZgWROpquUT/1FWc=;
	h=To:Subject:From:Date:From;
	b=AnpDnFVl2QRYU5UNYxitgyQEzK/wkwtJScCtLcdp+PiIuUhyKCeVWsjbFtKQ18qLt
	 kf4kImoRkZmCnBDB/jZ+EjKNBNLk+GOh+VCOra/6pKEoLdJzdhgpBgUq0yIU+AQkRu
	 Pw4gNJpqZxH0mmt1bgRonB/wO5uYI8bGhhPextmo7wSe8qzT6PHGSFgYYuGeFyEiP9
	 etpjRm6aCNWtu/wYVAXcs1uC5uN1Vp9AO5YOaJWhtImUI7L7vJCpUWMdsb9fp2QAC9
	 GcwO+46vsR2SeplfOhFlkiw/2xspI7bUdYIue2g+pb8DzOsVkOBJ0rQ8m71XS+5uX8
	 b8sajBevsfCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8ABC25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668366277.30700.9501101063722438109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f25825dcb50c266d5cc44b05fdffb62a1b7482ed8dd5974d9be5a699bc0449
Date: Sun, 26 May 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716683662
