Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DDA23B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721016143; cv=none; b=PA0MYBN6KsHsT2Z30i1v4fPatTEZO4s8/pZ1I3RoFenMlUMOcRrM3uxEXyjvH8Hn3d547fbbfoYwg8EmIssIdcD8FG9kytzmlKao0RKTGHxAbBDoz0G8W78ypZluiCpIAjuZrSI7tiAgTGlLhPMH11E2o8uJW9zr7gr9kkgQ948=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721016143; c=relaxed/simple;
	bh=nd9dgFbZNYUOk+fVvuPs+iLErR9dFOE0v1skDlryx7c=;
	h=To:Subject:From:Message-Id:Date; b=FdDwdePoh5/euIhls3H6a27rLqyC3QpbUKst4Q5aML/WwoQ8fAs2V2FYbc9JzUTKQeQA6sKPQ6O6d8A4ZWee5LUnbJVE7+SsWva4LkIYfzN7GAvVNi/ubTpe0nOK3MX3UDtl/sh5H7sTdvC9Hgx6JxHZ7oHIat99WDS3sDfcb7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdvKnBSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdvKnBSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F57C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721016142;
	bh=nd9dgFbZNYUOk+fVvuPs+iLErR9dFOE0v1skDlryx7c=;
	h=To:Subject:From:Date:From;
	b=gdvKnBSGFUxZ/CHQkLDlBKJmmIU7LuRuxZ7EUmJKxQLJs+RfM42PJWH7/fWlfLUd0
	 9KABgYFMHEXnbNTuJ9JWtqjHoaBkBKsN0hMIbTF24Py9f93WWQcwSStNW7KYnBjMPU
	 ndBS066ljhc9Cl+ajjvIkxiA43/phPkgJ7zYm3QlCW+IVFU5QWWPk7/2bi1XnPPdXs
	 rD9gFX+UBO8Etpki1+aM7/6q73F1dP6F4eqVBURgRPrhd/ZqGprTdN40eON1ZPZPD/
	 IanUq7iwvug6FSdifE4IN6aLMXuBkL52LKe1dOsFfd7GQOjsFo91tXKGsVS8YlKmWA
	 1l43c8xui8r7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE09C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101614282.19932.9682182895806528906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c631d5d8edd6becf88aab3b7bf1a29724c7e8c96cb2f233b84cf87a7c747b4
Date: Mon, 15 Jul 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721016142
