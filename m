Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E753FBA3D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763495515; cv=none; b=HX714aYUhjfer7PKETAEemIq5QK42kxtE/kY2AjCWj9oLLYgRYtvvC3kGEctBrBv0HdCOi4niXagWHWGhORLxjmKyaUQKNoMVDaJ8wVkeDHs+SstOOpTyrJBiPvkLQxcBvcXejBVd7ex146Ggx8aPHLCD2Ge0JFJjsAQvMWMxqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763495515; c=relaxed/simple;
	bh=eSYfoRLL3jrhkKSuZy4YoYL/endhiqGiFYyPTtavnBg=;
	h=To:Subject:From:Message-Id:Date; b=tie4hV3nR9OdZOu/QERYcUBtyGOeyYg8X4K497ow1GG3R/WT5Hp6aIFVh2jg4RCYhsK3F8Zc+ZF08Ev8zCPaprc1QqPjNoaQSoacx5My3p2y+nv2oqX8F1bMJemfK3d1w4vymP1bIRdr50gGlTGXZctXDxH6mfA0FENX+wDZMg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCl2Je+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCl2Je+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABC3C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763495513;
	bh=eSYfoRLL3jrhkKSuZy4YoYL/endhiqGiFYyPTtavnBg=;
	h=To:Subject:From:Date:From;
	b=vCl2Je+nkCkRQdn1zTNqfDgIBO8X310h2tokmTT0lUVjz0wczq5F3XHNAxzq8n0Bp
	 rwF71hmPmPG05eVbRjJR0ApQD9ZfTKhYfiGhSQQMczZrhR7BQnxoIMk8ODBBhyVREi
	 q+okbgYBjnAYjcrW7bysCUn69o3d/WMXGU0+ZGBoYk3bn1JMzTmqzZFty87g4M3sii
	 5CfmdXOJ1K/VTtgGMVsdvVE5uUnaa8MVllGUIvnTtNINd8wSmFNnrRaxXRoYtyLRGD
	 /d+BuZke/JwYXgFQLTa6iD0CswmdRS2M3TVxXvtbJ5/9SqYOPgu1nYfHwok7TR63pH
	 go8qwyQhfeSCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1765CEE34D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349551365.8661.10080283830776937583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd53bcba6994a3bcf0822a0fa5a0268186387cace4533a8f8494847186000f1
Date: Tue, 18 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763495513
