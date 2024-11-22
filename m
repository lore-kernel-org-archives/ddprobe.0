Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297141632C2
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732281354; cv=none; b=JDe/bS4U8bWHXmwzF2J9yX2v4/7Qmp/TEUiSPXmmfHHH0NymZcPhI0IDcVLdOaYGAJj5g2VmC9doDGtWu3gQA+4LArdBKFAKM8SL0SsvRzupMP0bnUAFde5PPMZgZrp0UxqZTiezDsMV00qVxIWN3Q7z706lAs/j/yikc+wTLGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732281354; c=relaxed/simple;
	bh=//u9NG+WF1oY1AnUS6BnsYQW2tPmJNWshRnLipP4NJ4=;
	h=To:Subject:From:Message-Id:Date; b=uahmcI+CONqgHR1/eVBPJMRC74ndJaT643js7CKJLcrg3pwvt5YpJ+l0hIj7Um8ZF2eqrbQ2gS1pNPkm3qqNxf89cjxLQaIae/95rYQJsyT+efXFSJHjAoCqQFPCLhChOnT70CcNOgu041sNNWWKXFriNH+PW+0gxl0RS1BsKCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cS9rsfFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cS9rsfFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF44EC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732281353;
	bh=//u9NG+WF1oY1AnUS6BnsYQW2tPmJNWshRnLipP4NJ4=;
	h=To:Subject:From:Date:From;
	b=cS9rsfFJZc5GmbajrqzoTzQLaY3qis8M8VbzHLndkTaVNz8z76EiKAYWkFbpRrIqy
	 AJBg6c2IiFZcMy8QlqwiNLP2scMFV3p2Xnuop45jCWPzjKDW4zT353VTR/QGVMrgO6
	 F8FthXXIA5+/w24r5nlQ2unI7PdLtDndKbQJEistSVLw5Xqm4ClQfbgipJBZoEiXJv
	 fhofVrkmBcjClVfry4VCmu9V2rpwRUf9k+S6xErFNrAXosB4ZGvp7PUudfCEFA3tz+
	 0pU5vJUDehUgrSLV3/jyXcCxBDTpeGUEEkysPStwrC0yRTJQFXenDyL1HVevNEpPzG
	 NGnDvgWqH2Sqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E777D75E3D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173228135363.29637.7811377557274679047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5196b1b03531115907e4941be66308e95dd7a1067c720fbb6060693ab83b2a7e
Date: Fri, 22 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732281353
