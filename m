Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480913264DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781601394; cv=none; b=JSyYQodLsrImvNeo/MghtfT6Mdf6DOgr21qoAr6+6cQwP2T0ymRaZgGxTjqAdydzCr8CC4zWA17Sqa7MA16R1Tx8th/JEwJXiOtDflmDCAybrl2xCsm7rSYH8FtF/ksN7lM3hzBcaedNYlT3Wl8rICpEdh5pQjegHpGNcQqDqRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781601394; c=relaxed/simple;
	bh=/6knBuP/DjyRt3J9CuxOny266i6mKbz9K0b57FCYc3Q=;
	h=To:Subject:From:Message-Id:Date; b=mEAry27cTIkKQJrf6a1nYox1vC4mP689PLFPUIi6n3/+be6eaHX/R+M+pPXtRUUY7qp68xtN5AYHeUScOhBPju4tgi7yC9nhjdmdkJsxtSZAQBirkXR8Mga44fuXGX5A64uRHAis8vZIDcLNUs7KrZK5QDaRAJtkBv98QwsGkQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtB5cKYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtB5cKYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32B1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781601393;
	bh=/6knBuP/DjyRt3J9CuxOny266i6mKbz9K0b57FCYc3Q=;
	h=To:Subject:From:Date:From;
	b=dtB5cKYPkn6W0o12xmZhEW3lPJpxIgX+YTgvaqq3UtLEOtjNRL6H41pHcvEwUCeoI
	 JeKdVdVbGE0reMqDbB+b/Vu45A3A5oTTgrPqzj/E3Rg1hsu3mYo9HqcTi/rE6jCP0b
	 4QsRpYRjR0ojpVXgWGyqCAD1Dq+JOG38y1v1imy7mygYsi+d6OZYBWRjzk5caItmKO
	 v7YyIJymr6cK8M2YHU6dEgrhcuzvShRjiQtckYdZG3pIDJj6+zjCZ2XAfgItUba4+S
	 +kb912vkH+ntIo9NYbYuwO0wZS8WzDEMF6XLSjlBizTPhPlB1busl327nVx33/AuyB
	 wT47k7vUl4abw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37A5CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160139372.30320.16260231774781626799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ea908935c9e4383103f04d6fa9a96463640e9e84e965d7eb04705a7a5c34cf
Date: Tue, 16 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781601393
