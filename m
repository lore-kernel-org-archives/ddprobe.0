Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38188336895
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788822034; cv=none; b=YbUvKW/ak44CL2aN5SIRv0kyibPXkbLCpu4GtzJ0D0J3ofRlSOHlE8ocsD4dmsKpAFVUo2hjOjLjJ4Qzgf1J/89Wk+ZazV1aaqs2B5CsB8CSzfkzc2a1b/hV2MBJEJw/Xuh2YVmRV1x20gHbtLWbGfOS4eoDED3Ka0o0q34ZDLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788822034; c=relaxed/simple;
	bh=hnwJSkaiEIp7RmRUXhjs6OECCqic73Xth0usszJash8=;
	h=To:Subject:From:Message-Id:Date; b=MGsRqB5pC0OzF6TqHd1uqSu+9Q2oJS715WhS45okashvJqAsSwPNckL9e2i9m1vJtDUBJwg7EM+SBB5YXGGOx2SCGV2TdCrUk6RVwfppVvU1XAvt2v5t/iWHTil/ljcsJJzMWFQCGMBhmR6rEzPa2z57l7uQ2F6ndFNNO6FjxFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGYjXwLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGYjXwLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE37C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788822033;
	bh=hnwJSkaiEIp7RmRUXhjs6OECCqic73Xth0usszJash8=;
	h=To:Subject:From:Date:From;
	b=kGYjXwLWTviaNcdfhvfq6wp8cgn/xc2bu1GZPvaETeD2gLv9QduJNCo8Uf3cVhpJ0
	 DV0laJGzXvsRCyRlkvb5tdckHPS+XaOvf6AjN8QHecfGmhLvQCJ9eyDq6YQB+4eovH
	 eGNn8F/KTznzt1U+4ysnedH+hHZRnlzBFJl5X1ya0mVv0jxOVqHefvXZiX0WfcOht/
	 OtUpLiogt+pOCSO8yQa4e+Nz0hBI3DgB5YHETRYGJYF3tD5kxPeEYldivgcwd7CFHS
	 JRxdds562T6MYcqWlzLCBcnsVHLAJxfIzutc8QY8t8XCJ9esMt+v23RWgpiL4nZqLZ
	 tgS1UmMoDDK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DB6C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882203373.2555.14243077943166237107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ca07b9243f8fec45e54136e92d80dea6bd33c1955307073c7e4ea579e4053c
Date: Mon, 07 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788822033
