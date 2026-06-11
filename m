Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2EC3659E8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781165794; cv=none; b=uE9FmwujPxa7Y1b/zP57Wv4vZ/JC65Jn/jJvJ+IMRngCinADyz1hYnvjR8fIeWrhD4N/+EWQN865JYoEmX6H9GRvyrPyIcvsZkSQHl/5nRnWYQ01BbC8XHzgKLlHPF1XHoSoB/ap+BaLD8F/GSKH6scp3gL9RkvjCmlCez+ioEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781165794; c=relaxed/simple;
	bh=TRhZpXhRYZ5wPMuT0cNtCTAhm5opiPXudIBN/hPTmvE=;
	h=To:Subject:From:Message-Id:Date; b=d4wsM8cdSJ2NBTf86Kj2NMKICCwWDnN43CV9GRnCuQXBKy696wiM6+dWSnyppEtF2YLmqk4gApIgRVnHIP+zrKLGoHdhnZn3iyAPS7COzU3gS3eoWbBp9FeQj6VXDYcNxDlVlJKYjsYP2uX582D8KbP4psdzqFh2rxJ5M4gif7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz3haSy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz3haSy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CF1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781165793;
	bh=TRhZpXhRYZ5wPMuT0cNtCTAhm5opiPXudIBN/hPTmvE=;
	h=To:Subject:From:Date:From;
	b=Sz3haSy5VwTMJOvEL+cILtwewQSEecLfPVqK01Jxh7E0a3Bq+pINl0k6lF9+X5abx
	 JeQqVPgKEJio7sDbuq/yo3ceGdxnTw4e7fVQVfUVKY9r0fikLvvwKK+z89dl/BcX1H
	 5WkcdYkYHW77YrQ1aTa5BwomPqB665Q798iyksVSuZpwOz5V2Hkumb5D/wpgyBN1sU
	 5Ll4E4gUzDMLxjHRX5LTj+EoIK5NEhpa/5/AuTdYgaBXCEnQ8oSM8EOz6ZdwQiJoa9
	 WWgnBImXr6qSmNpDfP9r9bzv50hyDOzMqCchCi0wFkUVFV/zfY6hP3KEbbWOjLoFcP
	 dYruAe6b9KFRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0AFCD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116579368.22771.6328263724487411627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c273998bbafb8525f0a83e01c2712700f0eb9056ef3d85f03f4dd374dcb473
Date: Thu, 11 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781165793
