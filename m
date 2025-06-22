Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E781A23AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750632594; cv=none; b=ctAIPWS5aa29sngbeo+j/ROZCfjptJGQsJxkFJnk/Y227OSTXXOZn7xTH+C7aibKXxmlxWnQgOki6b/NscCjSFHIHQSi8pwPe9ivy0luE4LXSNmVi0Bv4yk6unrufe8F83lTtMFYQm3IpwFl+vuAt8JdFHTwOUcQdJd6Y0nsd5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750632594; c=relaxed/simple;
	bh=cFJAF6QlVnR/KeXUH8MfbS2QE/w7YjjthqF/c+bhHq0=;
	h=To:Subject:From:Message-Id:Date; b=aCLGkFh8aeNFrS9YdFx2PTw/7ZT0RceM1bY/5lZpQTbWGVO0PeV3QzTOgsXtXDPLZLzwueK3y3iMqZf0/xICh4hhYDzERARPjcwhTQZ0XGE2OVavv12Zy2I89S7E0YG/fs/L7Km8Fb5ZAqiQKtUqSKZr3Mp213hcY1XRtlFRXnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Saqr+jwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Saqr+jwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750632593;
	bh=cFJAF6QlVnR/KeXUH8MfbS2QE/w7YjjthqF/c+bhHq0=;
	h=To:Subject:From:Date:From;
	b=Saqr+jwgrK/sUSb3FM7AhFMdq/1MVEY5mQV5JVrddWeIVD9Z5+ua3jRvoxcOqnZpF
	 dRbDF/e1/8Jxidy+q8Ow/4usrVNiNUfqHKv24CaCEsVZOP7SeqkQYm85wTh0TplxwK
	 jstAXKNykmhoVQM6LFkHplq32vnJHbdJeUSTHvIEvuax5DxgFGCaXq1+TSySe8Mho+
	 SAJj7rY+tO637CsDZFfTmIxq7nhmk+bIaOVaWNlZxl658iEC1Nu2kX9E0AGCkqAnVQ
	 YmDEX/B8dLWZrGH0LuAqMISA/eXDb+I9iCmD9JQjstPPwet0ztEhhHVnLQwrrs1cTm
	 n56iztTlNuA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0FC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063259357.24979.11952408043013418726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b058d551d6bd8b978a34d3ade731350525d86ab93b299e55831fdd5c0f26f9f
Date: Sun, 22 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750632593
