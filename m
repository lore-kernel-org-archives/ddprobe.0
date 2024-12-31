Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BD62C181
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735659954; cv=none; b=iwA/g6UhksLzKEcl9xTMnqIOtEVpiVEfnYabjoR/Q+izhp5sZA3F6QNjRnwoDo4R+8foRpTnSG5DLm2SmRNooK7tDBLOB+LkuoXZRKbp7B7BcNXjsqH/wEczFjrKI5R+o9/UKwRa6XYJqH5mtnLYPzDWCXlECSWLAX7CrWyZMys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735659954; c=relaxed/simple;
	bh=VhJ3G36DQpuWi6h4rQIZUJO4Ieo0ss66GVWk3xuxB1g=;
	h=To:Subject:From:Message-Id:Date; b=Gm67ocnDbUhDlNMWq1EMc5A5KtvwTYSirI5IVTJeEdCumwHZXkSA9I1lteOzFIGKjPR1o7bWywiTcyAPmH2zJcJ2sXsxVmWmy0PZKpJ4B7ubwIjQZrJqarRX+mokqyPK/mwAd84DvMJIXezlWgKeOcZj4YVzIemz9ipXml7MMK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKYUcO0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKYUcO0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FE5C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735659953;
	bh=VhJ3G36DQpuWi6h4rQIZUJO4Ieo0ss66GVWk3xuxB1g=;
	h=To:Subject:From:Date:From;
	b=aKYUcO0uQ7V5VNylDDJtP5o6YZDIH2/HyHrnXU1PmsJ0TkfAm4o8CTvuDKleYoYbp
	 JEv6HjZ80o4xm50dJSAJo6s866+1oIe2SgNkVOrwd2e23zfFljvndfjtD0A+h1gcwW
	 Y7SgX0N3qT30p5Uyz2/AC1iAXfCFOWyloYQmj5VAZUjN2orsra5s+hTfrEPUGwGkgK
	 fEWqdW7T31UWB7WrCEp6x7YI0pogdYpYVgjKoHb76RjRweGeWPZH7wTgkz7RjhCvfk
	 HQvtXMabABWSkh8eLlDUhIApu4hW5ak2+v+aLbAPLSRdW7bQFp0Sxh9DlIgalBT8DI
	 F4vzn/s+Wqglw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C8E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173565995357.4732.3825621609681088337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8610c0738bc27db17eafa4cc96cbc3023f70c754322e128dbb7b7addc233bb
Date: Tue, 31 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735659953
