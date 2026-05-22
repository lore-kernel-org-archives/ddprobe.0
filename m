Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A2C335BA
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779408154; cv=none; b=qfShEKpd8wIn4uDEasS0KfnXHeP7yoWzbKz0rU3OvBRczFDofoZQ+Rd9V8BD1Fvqi/cruKKRCNvmsu5T/qBLzbHyMp784SeyeVkGfrq/EDnZNq9fa56E8cRvS45iH4MR8xRJxCX3IauaYhVIq3BazRDfkT3+uE5Vtr/VMomw5JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779408154; c=relaxed/simple;
	bh=7TiFcObZm0FXyjtLnYr6xYoRWQcTRZpz2ZsClrMx1jI=;
	h=To:Subject:From:Message-Id:Date; b=hRNqux4GAbraF0hdWWfz2r1XTUsz6+F9SQMXBQ5f65w5M1HNv+ASd9tVbqcOY5DHnsdLA4XnThXlS+nb3FVWbq4hBVTAdKOMtWuTTgaKk0w7lTRgtx9T+u57cRyeFreUPOJmUVKsMvEF024uJPWe+zzm4yF7PFfxmXnNZBz5uxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWOyc5jR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWOyc5jR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86A2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779408153;
	bh=7TiFcObZm0FXyjtLnYr6xYoRWQcTRZpz2ZsClrMx1jI=;
	h=To:Subject:From:Date:From;
	b=NWOyc5jR2JhDdIsc9xJnGiA2+aFKErcYuvEZOkTmOLJwaT+0WAVzzC8eYpnxWLLyU
	 yIZy2IAaYXu5QvOqMP74h8xtI/NWaS4Z30Z1JCuDAemlN/9L+4kjuuaegLP4b+zrGU
	 PdzvjTFkmbfBmN2urmcWdbB8Bvf7Kv7h2vHGtvLMGgmLg11nnSrZ7MQE853LpEu6cf
	 522jr7dcA5xWWyydk6U03JJOa8+KnbYZGfF1jaQaJROdTLBvLyMVaytqVbwHhEHQWa
	 IGa3y96maAqNWTBWuIq/IIK7Ivt4HghKfSeMoXM4mlvjqwkyautT4npVpI7e+vvzsi
	 OiU57pyTAkkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80E9CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940815368.5238.127015688517026426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb5e98a5fbf5c3cdb14945cb733f1a9c24cfc1a9e4d5b972449d6d40803c149
Date: Fri, 22 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779408153
