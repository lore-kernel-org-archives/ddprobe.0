Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CB3471D08
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785265835; cv=none; b=Vb4e2zuzvnPzd67UN7QhaQuHU6V8PwFhfN8TuEXYIiGDjqkUlf4dxNpljCCq7MB0bSsSCfjYnnWcUWnasnGimmj7siWCVkm8c6jaF/Lcq2idUtEtbrpunOZ7n/ftcLBROA6FoFWN8z1ef9RnoS3Py0wUH1cQzFsvjyT8udYS/jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785265835; c=relaxed/simple;
	bh=RUl+OsZa2WMZOyfFp1Bs7GIJ+/SFNaF7Lr+r6IqAjRQ=;
	h=To:Subject:From:Message-Id:Date; b=tBO8JphmLW30SKTd8lnHQGbtcjwu9JS5h3pyVyYsL4EGcQYnzM/g71yWTUHSwkwgZtHQ2seRRszOhIY2LQj1hG2xlmYcJ4NtYlFskAbcFcWnZVRs7zgEm3JADMAGC67cAtxyhzyhBhNmU3kqKk0yJGz3V/4dW43Bq1VmKJgaUeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beY65yM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beY65yM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25DBC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785265833;
	bh=RUl+OsZa2WMZOyfFp1Bs7GIJ+/SFNaF7Lr+r6IqAjRQ=;
	h=To:Subject:From:Date:From;
	b=beY65yM/NKAteyD7CkwkEJICCNK7fZrW4VfQ/0egj127e3ezlQgO0qSAxHTFAG839
	 M59SMVuDmqFagyR5USpFK4IfahAJq5wBsqqkbp/wDcDVrDXlzTiikU5XnVrDWnWh4+
	 VCmzHozTcH/8xlxDgfkyiLv3dynbppqXiiGpZFHXHTdb2W5S9QgKKkyxP13ZnO2miz
	 Wod4eILqNNLbDRtVQoHTrPvQcia4rrsuN+eXbDBUbvkQQHDfrPIYYI8BU8c0kg3ec8
	 QQSH3QcNSyzl5/qAHWmb4A/1CcCGUc9rMgWGG4iwd3Cftxnn1QpsAilmtCDUIcpVx9
	 Jios2na2hjFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE79EC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526583370.22031.764851773606159100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ce6835b793c2b0843bed5490ec984d6a02f8aea05a2f8910f99a32fd563401
Date: Tue, 28 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785265833
