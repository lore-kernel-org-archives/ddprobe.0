Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242703C37B3
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778596834; cv=none; b=S9wODlseQp0wTmBLE6e9v/3TSTgKYLeKOB7wC39cbMqn2RLwlm9Y5NFpoDI10isfsqYQFo3XjdAyjTF/TJMoz1J3jN5ollsqILT/kV+/doId8zltPiFyFa/3cJg2MJ9ri1IHw8rutTec+AsPRHdWQ0pheiJmSrXemYgumS1YJf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778596834; c=relaxed/simple;
	bh=5NFvuC/rPnlYysujn6TaYf/Lnspds0yDaffA03uZq3o=;
	h=To:Subject:From:Message-Id:Date; b=i0TrgFjhbeNjTIhb4zVnQ9q6oGumu/msay5g53DkpjmS/v2VmMoLRqvr6WLezkHsLqHmwPP1jwQYWWR9NbGOyrzF3QSzTaDVAVY+V5Bb6+BajBRGa+uYr8bHS9pCk30sngCAtLRXxkT1SSUsEasWfZt7/f4NAcrgOZsM1MJPrPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPHntmlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPHntmlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE14DC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778596833;
	bh=5NFvuC/rPnlYysujn6TaYf/Lnspds0yDaffA03uZq3o=;
	h=To:Subject:From:Date:From;
	b=pPHntmlJpagBJSlEm8VMfYX+jBJaB7DlVNDo4LDLTNUFB0glZZ0470Aov5pXYrAlx
	 vOLFzu1VS/TtSOOSZfbZ3cyoSSiSs4vrZdIvn8PG0lbLr8qTYT1WuxIGg8KnUfzuUv
	 REmlcrD0sCGDIwrcI5nr4NaE7wk6kgF2pZfnOSqdYAGvtwazaZ4zIpoObP07rwLhhB
	 dzkJaaFgjd1rizLFcXt6lQlObjkDc0NyVeOatM8tu6SXB1r3GUN9Ojopk4mpkZxui9
	 VgL0PlGpeTRZ08v7zuTTYgRHWR9fPwhxY9Gfc8Zuxb9rn8ClZVHxEeVUMDnXqjZYnu
	 spFEow+1UJGIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD92BCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859683370.13830.16035519885494025280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1e823b2e3a3c52d970037267dd1c444195380eede54d8693a16e9d2809109c
Date: Tue, 12 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778596833
