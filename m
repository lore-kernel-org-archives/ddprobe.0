Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343773ACA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782797314; cv=none; b=q/+EboV/rQxKnjtD6Ov6ZZKkVDAPaFS8y5DglEwYY672bPC90T7y1meq2ylXRGEzvSLWM2yX1xN8VidDe26SVI/lXqb9JDSD9SUDuexho2dHarcS2Qvp9peDKoUIxB9NF4IJ+Gbg4vb7tHac6Rzb/yNSX/PSsX+VUXf4NI2FWpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782797314; c=relaxed/simple;
	bh=VogySz1ZSasgPnaf3ciOj0XQlorkANas+xjwqwKeun0=;
	h=To:Subject:From:Message-Id:Date; b=Q6iR14dtnJ6i7OihUQOipwR3Zvh2pVyEq2MaGvY7mF6PH8spDbmt5FNuQW3O+65YrGxnUA8UT8uUYEmzJTzLXfRBbNDbpvPg2iPX84Mi/Kwvdn9EFnFaCankKvPWO1bO5tuyWwrmaEavdbykcvOHBa0bCpLldbg8ulQmGHzmtVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiuGdI/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiuGdI/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5521C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782797313;
	bh=VogySz1ZSasgPnaf3ciOj0XQlorkANas+xjwqwKeun0=;
	h=To:Subject:From:Date:From;
	b=IiuGdI/Yg1Tla6SWhrBrtj0ZLRVQvOSniUZ1uDWUj6ONJz7avV5fzAVOKQbMX+fSn
	 98N5ynjF9E5CIUqAsPcvqX7cVhGbf/3QlLo9fMiwxyl66ho6h4gKf7Oi61HOdmkAeT
	 PM5HKqbI18zWqRZm3g4hqO4CsZrOPzu80OAfDrVWZAs+nR6t00Bnhs9qd4k3Fl5Sbu
	 o0tSwZK5qhrzeRE8AZRiTjN6RxMjTE5dx8xad9ahS2lANDntFG/AYZZ3tQpyuNK6wa
	 ARAN3wnus5c3jE37Jvu1E8bYOD2lKqRgmlH38kHdrt7CU391I0IYfaPC//qU3fQ9Qc
	 re2LyNTT2GaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45BC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279731368.13797.5096423567381586751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcaf6593bef0a5ba9904b4c7724b75db20939aeab247aecd6b0df3cccf0c7d5e
Date: Tue, 30 Jun 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782797313
