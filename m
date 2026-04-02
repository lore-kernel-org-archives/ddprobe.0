Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EAB267386
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775142934; cv=none; b=lmECQbn7lyftqoSmZAtTETqSf+VLYRjVjFAxtbhoiSypXYLpCuURidXgTTeiMRWHzyxj903E8nmStzXisc2aqL1IajoeLNMn0NjQn2P3vouTtC4fvb3spawBYx5SQBhY1sUJuXIl3F8xFjsdzBKf51V8VTZtT6b6HEGdiBzruIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775142934; c=relaxed/simple;
	bh=RJJ8fzfXA5RH1m4eRN1TAyE6Kycg5SECF8ZRZ9xOv7s=;
	h=To:Subject:From:Message-Id:Date; b=lhVZNbQqIYqX3smf+pWHndc2GGmPSgg/sJ9cLHqpzlUpBMJRlQp/lBVnLDEyza7OEdRxnyMNBj+utIKhV4epCKKxg73IvcW6LE5vGZlBM9ZJVMvEdIbur4Mvc4dN39sAjGRqBXKx1tteYGJC2F9ziGINKvfq7KiX30lImreug5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7CJ7iW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7CJ7iW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD679C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775142933;
	bh=RJJ8fzfXA5RH1m4eRN1TAyE6Kycg5SECF8ZRZ9xOv7s=;
	h=To:Subject:From:Date:From;
	b=t7CJ7iW45q5wGCcaISQ22l9tovZ43WEQY7Juoq/qo+e/3qAP1aCG7fiTVfykpMDiL
	 b2qCX/LzbZU1kEldOleV2lTyN9NE1mWLZBCau0ApF7mUnlwoacqKoajawxqygpI/C2
	 RU+P0r/zIxqm46ejExA75euqQCD3BxW84G2DKPqG24H7R6Pp56dbNtqpfq9iIduQ+T
	 vq3yfPE+gbMBXnD7PtTKFbtZf+WefwlqXjAQikVCqknM37ayXlt4abhh1Rxbz3FKLF
	 5GhIgBK20GgYvMI9HkCUlR93qGbDh4E43GG6nL/2dvu2JnrCJJl5k78k9XN9JPPu3v
	 XzVUtLHKPQ3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD448D3943A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514293370.8871.661966321507903607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c97d2801efef9677fc04410107b39ac4494d0480fa6e8535006a6a48a7f630b
Date: Thu, 02 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775142933
