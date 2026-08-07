Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548282DF137
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786113636; cv=none; b=c4mk2YfKemrbPyHe1CK/tO0nlEL0ADXRs1S8Y6nkNUWC4nSWnhjeFIN9wIZW+vfE4TAj+F3iFHaqc4MSGcHn165qiAfsWd26n4jV3cP1in42FXdQ6oNuvMamgAMVbziBSvxct2JHBrzwk9bWHP1qdG13+9LIao6HTjm5tfx5uIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786113636; c=relaxed/simple;
	bh=ogxh6UDMY/Z7N5r46bHg+iYpgQmdzNR0hipyHqfuMHA=;
	h=To:Subject:From:Message-Id:Date; b=JWxv+aD1k3pU4bf2kTowuplDh057D5yM5fUOP4gIJigb9QHFn5qAhFC3hHIm3Ti26Uwa66xdhQLIDOC8ePTRf6eLWtO91Yb49mQSMHOrIYnZTxvAWsOP3oGz2kw5w+ll9EJMjXJrwfbKbP063vIPnt7U3lg4IMxl11NbXABsWUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/eiKGFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/eiKGFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BFCC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786113633;
	bh=ogxh6UDMY/Z7N5r46bHg+iYpgQmdzNR0hipyHqfuMHA=;
	h=To:Subject:From:Date:From;
	b=E/eiKGFRproWlfkxwKHoxpVeUlfL5FDWsp2RE7DndYB2XVd2/0ktk6VRoWgzqtsTr
	 kZJH+Ge7EZALfaYMoI/pqiV8X7lXArzRT7oMhq617o+JUzW1ar7PipABWLvNv5UcmX
	 DQ1WVDW7r3YnXTQXlmPbi0+jnsN/0u+D5RkhNNsJfOAd9Uro41RRHv1U4q1H7LfyKm
	 vtcNFZtiTM0JSNxTOsXNmnRzaS82Jw2YgqSoa+sWnzRGdTJOYGRceGnLfrCqApH+XU
	 smBNrQt55Fi3Mekvku3KkgYjY9xXSKYRTdFYwZ6m3OHRSMi3cJNFSJcRwH4YcM0H1D
	 lohbO4qLPQBfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD23AC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611363369.15378.15707615017453652387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a72d8e70206c5787790d5ce8579d68b20248dedc5c3ac524325f156cd10e42
Date: Fri, 07 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786113633
