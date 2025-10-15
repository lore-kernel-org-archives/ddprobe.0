Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC81324B07
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760529595; cv=none; b=aVq/c5di4To5ttv4REOul5kTMAaf7pwt9D1TfkFVSPgcPRaIFriEWyJiPB5rIrK4Bfcc/d0rRrOMxuqjRJV6GvWxCaA+1R4NWilhUtYKM221pHJD2du4jUrCLaFLvr1tQhexbrtw8VGiVUldnv6s9Bq6qNCPVnMN+ZsqlOAfI08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760529595; c=relaxed/simple;
	bh=zJXy5oS4y1hHXczdR57ksdnNAV+x7bFXgvy8JOPzAz4=;
	h=To:Subject:From:Message-Id:Date; b=e5LYJvwD4diFK7grhU57KewmCT2UGX+elpry3VHUgz5/9ydAGY69QAGu9uCts70lQiqkxOXhVLruMjk0D1Bak9G2erFcx1AMStXWmAwpIMb1c42CQsVDbAWOl4e0yhiCNkTQmen44kJ4tYnG96++gnIrBSFQuBc0mElKX/FaP+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/aZAjau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/aZAjau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFE5C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760529593;
	bh=zJXy5oS4y1hHXczdR57ksdnNAV+x7bFXgvy8JOPzAz4=;
	h=To:Subject:From:Date:From;
	b=K/aZAjaukgVpU9qOBfODfz1xTmQcXgToTZn9y66yja40maeNMszzg/6H3iE9xn0iz
	 hR6Y/GjaOMe3kYNOuIPYooe6xaOSSSMIcvsF9pR/X5vrMvDhbXHgcmOC3V+PEC8eR9
	 UQyED5W2V4FCtE9Utipxc63nOetEt2nTg/IsaKJyCIAfkiJ3MzSi1/O+at/T7l54zv
	 XXyvEIMfLdBY47S1rm2lcu0m+V6cubcztUkNHf7ImsSl34Q01KLDwhRRXQ6soWlR5W
	 HbHkvb0RGUoMnP6aLBpLzsNchBLf4zhCn7PkOYQrF84n9Dst3SIgDVdA9PHlLaFcUr
	 QTv6qqGgJFmKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF71CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052959358.13338.2506745700673539026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18097bc67d716418a8da8869e1b48820195ab134823cb78b73499c775abba8f1
Date: Wed, 15 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760529593
