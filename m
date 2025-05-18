Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D094A00
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747572594; cv=none; b=ulFXPVksnwyBQQ9m08vInj3+X2WxsKz/PXD3Q0dTfmC8+nBAuTksZr1/JSAjEsB1rqwTz0/lu+vX4stQpMncaxmHYj+45aq7m6U5YlFYRgzMzQXtiGyqSxzFp2kiCQyFCnlzhEBDdgZJ/cdoBOJTvm33+jKzkqSCepG5ldCHwIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747572594; c=relaxed/simple;
	bh=rvTIDqh4J1YXWffyhyMYswq9jhHKX2MRdVZjGzmV+F4=;
	h=To:Subject:From:Message-Id:Date; b=am+YT0BPoaTr+xQZ4JVO0T6UBJ6d5ZSD0eZdbdv5LaxqUv8a/R4qhB9nybm+RvP8KzCee3UuXJXWQrjsLPNHAyeiRIE87kY4BYMLFqq4rJztoLbveCyvN+JeLPYAvHa/Ajt52nH+ByXdQd+9Cm+lvVafhnZBDBf5I3ge0kIoQws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nq4IQAOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nq4IQAOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747572593;
	bh=rvTIDqh4J1YXWffyhyMYswq9jhHKX2MRdVZjGzmV+F4=;
	h=To:Subject:From:Date:From;
	b=Nq4IQAOXdljnsTCjjketwYNFm8TOAh9XvqIbLLOT+0pofrUaCtGeaWZDIePBc291v
	 PQhgW3gsapNFHawmRqk0GK0j8oJNJXGHHOB8SDwwDNUOXOZVj037BZOv45wvxDRBJ2
	 N0uaeUZQF2S5ZezPHSADYCOtWHChj3miV+XH7bF+GzYPJ2Mcu5qo3H3lfH3kPyI3DY
	 e8Ucby/P7WuDVHrXF5PlCu35KvpBQu77IRasK58bmwFQLI/+q+lAOksb1xBgRf0hmn
	 wKlXk6hAA3qQMR0ofTd7T09wMQIet/c4Q7YOEAluUEzS56LQaycrYi/poaBhNh8dkO
	 cDHxVHoE6KPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992F1C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757259359.604.11905390690129684479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f911fe2957c1f1809b8f18edf935f9ab3413fd800f9152ba6e33ab42df576bc
Date: Sun, 18 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747572593
