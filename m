Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A812D477999
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784629114; cv=none; b=ot7Enzfz2XJ+uU/xEw5ARcpr7VWJwiuPYUgVgkQgPbruX+CY1ZT599rBcmaEgc1y6wnw78OP8BkkP9np9fTTitwxG/jpM28I4UiMp2Pqsd/Sz6tbB+n18eXYbsbQPVGo405/zr8Al9s1O35q1Wn92HWKxaOJWVfyKxVUaYXldEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784629114; c=relaxed/simple;
	bh=k3r45mkPsuM9ET5b4VFdiXo8S2bQcWQrQWy5+Bk6at8=;
	h=To:Subject:From:Message-Id:Date; b=XtJo1hFjoRAKQeE597TbSiFf+o+LixA6pTslzeETbBeZZVBY+mjT3gru0FaConcXOa05aLbG+GJXnvop/AK+sArNs1MA5k7SLqpRHWhcExJfsBmbwLiN2u/9EaDQ/L3auB5bdR0cfosatkOU1lM5yMOL9zfKSYln3CCZAEoun8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqTiWvi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqTiWvi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62BCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784629113;
	bh=k3r45mkPsuM9ET5b4VFdiXo8S2bQcWQrQWy5+Bk6at8=;
	h=To:Subject:From:Date:From;
	b=cqTiWvi+JASRTiKunBrFSCkJff8i16T7u3nx5d7oez+TApQsOKrXCDiyziEQ/esaf
	 WN2W0bcX1DScjASwffbqYrAnPMcok0x9c4Ty5d4sCKRZMBlyDi68mdEOHDi+Zh32VQ
	 M3Fa+Lluz2bkHat2xxztYHkMfPgE0rZqoyiGZ0o+jiUXwDzGz4ddgDANvalqIkWx/u
	 kGOs9usY04k6rJMx4gNq1zLIQdEdWAZDZYuQRAQXtqnz2Xr+XNi3wmCOPdlZU2CxpA
	 WdvcRdVhcY9pFHqIKwniU9N1gGHuXN8UU/DekloEjgGOSqU45Z0/I1gKpZCCYjD/BH
	 slqotViSqTsvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27B1C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462911372.1039.5051992983297909910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5aafe7b1bc3dc83e3eaec8d3f193f2cbb79e12386f2c226e775d5ea4049541e
Date: Tue, 21 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784629113
