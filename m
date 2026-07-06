Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE733AEF36
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783314514; cv=none; b=RNjV/9zNLojnUG2Eo21W/r51lW7HXjeefKNXq3e6MvV7rkkT3snEFtmTV4R+E2zqr6D/Otkau6QW+Fe0OjBn1empdmC2m4+LAQ7qy3aS4ZklzozMIJmf42Lhc64KghTOPOaTYwSxWeekUnHTyeqtG9i4Qasl+20KVA9MgZnxglk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783314514; c=relaxed/simple;
	bh=FgwBE3K1m1aVfZmF+lun6qOxM+5h0xTyziGAec9SCTY=;
	h=To:Subject:From:Message-Id:Date; b=dsETFjq30ieDYvIdnO5Jkp35gDQxLJrRhFgyail/55gm5zHKfcE55ZRT6khVepeysowYKzLygZW++I48czlT1Wvd8UgiGZlMU1yuHgSkpqDUrYcT28/QxynPc/CrWsFkB/6bctSCB822zKsaaA9+ixh3n6DiFx/kT/KC3AmODhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne9IQKWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne9IQKWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA94CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783314513;
	bh=FgwBE3K1m1aVfZmF+lun6qOxM+5h0xTyziGAec9SCTY=;
	h=To:Subject:From:Date:From;
	b=ne9IQKWNecJpTztwEbF4l2EdJggnGoTycVW5Pjs73mDxv87Qtnt/Il9AqfvwaLsxK
	 QimZ5zXf24f69ZL0JQYgPVOKh0G7H1KS4I/FQl90Ds9hleDoKJSXajAWXBeDKV6j3+
	 i85FlLeESXj3hyA/i/xalhmKfEeXRktNjgeZBotHXWFyidl32aW5aweRnMYMkHGaoF
	 rXcpBX9WQeiYqWNfWfS+ACBVy1YOqW0f2S5I3h+/p9a8EJhr0+goyM5vij3cZqSsGq
	 6k8REmlOdD7WkeMQTFb0YtBNRBHMzq6IpeB86MAgbKf9DDB/qDyRUCAS8smW/Gm/OX
	 YUUwR9v4A1iMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A853BC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331451368.5294.1776932110676055956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14742e67811997eb7b09a200f0d25dd6b7ef3772071208dd1c3cee9e7c88c05e
Date: Mon, 06 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783314513
