Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2265518E1F
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762643994; cv=none; b=t9GpokSgLTp2sSsd6eI50Y6hOc+3yVbyBYdmrlyctAQ6ZqGJslERvsmJUKZKQyU8G0dfDPu9l+h2Du119L5wgt7MKdbZlgkJ8aMbJJ8aj0qZ0WuTQQjJBHfkdSIusvJE1IN79bhcDyPlp/sqJwSmbL1Nq5ZjDUNL3tK4GQDVjJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762643994; c=relaxed/simple;
	bh=mELa5eKGF8KdaLAHp6JBjrOTWKbLtk5AxdUglLNyceo=;
	h=To:Subject:From:Message-Id:Date; b=fsmUhQ02ajGRWq//iMGZjrGeKdrXkgHU3JuetKYY1Aj9cDGYriaOOfRGcmjnBYoHMYnSBsoFZU/Z/KPgIrwbDD51cUHnlek7+OLcDri7OI175HqPGwcOtkIYNnorEqTKPcTasHV6J055xs1lU/8hUc49FF30j9IEN45xZ4dJBMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G430Ic1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G430Ic1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF02C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762643993;
	bh=mELa5eKGF8KdaLAHp6JBjrOTWKbLtk5AxdUglLNyceo=;
	h=To:Subject:From:Date:From;
	b=G430Ic1OK21Qa1cWBl/wIA0wF/maNyDyuETMwmt8VXZvb3kir4tsy+I6jMfSLUci5
	 SZ2VNsOJIz7NRuI4UHJB6bEDSpHMXJ6LOsQCfFv9wSyrdWfoaORDh5ZKjX7GdU0M2S
	 uMpWGRGhZsSzixwHJIXvNP1LmovtxVhQOTesEOodAPO1CjzO2ULsTO4U2pUk7KdX4R
	 Ko9ltStS6uzpXUeQnWEg2XXHJ4L9LOr8AI/vwGqXfxwAnyaTKbGvFRkuTj6laZRNlR
	 OLSDODedXr+VfXtDz07IMs6F7XOrL3dPangNmYhgwjrmaS1c8QZQh8VISjMiS9/C46
	 B6cOXXFO43CKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072CCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264399358.21865.5376933783361573542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668bbafc8022cbcaa15529c96097103a275d8962364abfae452d256223a095f7
Date: Sat, 08 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762643993
