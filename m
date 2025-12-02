Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E5329A2
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764716573; cv=none; b=DTR5Fhsnp3HhuBIfdjskXYcWdEMuIaIzJwKdFrD0/6xxb5cCjxMjsc/bEhAU4HOFatfgDKI/qtZHRc/K5KgoxC9yMzgEJOEQ4BH97V7IUMP8iesTclyOdPl4r+i3PmV4zVvKjqSiCRD4L6Z27oVsvxXdoLihrGV9LsC/sq6ZwfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764716573; c=relaxed/simple;
	bh=T7fN9flW4efyBxWkuhGx5kcG1o0cfigWq/ntOd9Porg=;
	h=To:Subject:From:Message-Id:Date; b=qJq/bNNPkq0bb3DTdcZnmejYkfBMPzZo7LA6viOhcO7/U7rrIkeo4RpNiNf1nBj+ZnPngYQ/BPkBgf5GnCkTKPI7i0oUttCz4/LXyPZWiMaAu8LaJ4JwdlD866a+OT/j3q2qYoakPxbOOrLdOwQfa+LBFdqOxPs3qOLGRhDZsfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWvraaYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWvraaYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A06C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764716573;
	bh=T7fN9flW4efyBxWkuhGx5kcG1o0cfigWq/ntOd9Porg=;
	h=To:Subject:From:Date:From;
	b=EWvraaYVkfiADQFmJkIFOPNQWEFCdLu3QxQl00ozaIFEZzSC85gk7vOKDSCIpe0hu
	 lF46gQBpSDavpVEorf0Re1/atErcRClYhS/MomIwFiVbTTMFas7AWGyVRuwialnffd
	 CMr7xMFcFbpcugn/Cz+ovNoUPrhtwfS6FoEm+RUh1Qlhbh69MIQtsdW52TWhu6hrgi
	 shjiz7l+15ltuUYF3ViGxGvscevQWyGE9I3gXwITL/Z5pDkmbs8Wo+j6nQU/Tml/bA
	 nGmBkNolP4gzUer8P3xugj9iCo4tDhsaZoz4E3dIl4p+pRISfV+tHu7XRSLvcFoXoH
	 +YilST3FopmKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F3D1267F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471657358.22698.13638592767097601778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd402dc0075c012e9848a3952eb40c6e0ae576c03d05a980c5afef0fd07cecb6
Date: Tue, 02 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764716573
