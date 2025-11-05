Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A239311955
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762351794; cv=none; b=BZFGlx1IOijJOY4Idg+ULvqC24XCIM/fBCveYXqzqbuJeUvpBPb7Cer2ZaSs0Q2qzgBg40GQOjvyVdQQOIweGRsavit4umyhqV8BqkWBMthvfB3KgoP2wkG6RzZWn1OHxei4OWS0kyh6q26gCmi9NIExseu11ZKmiw1WODRSBHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762351794; c=relaxed/simple;
	bh=e/tKDnS0RvEsUvL4+BarqOd++29tcvkjeg99r4fFSzs=;
	h=To:Subject:From:Message-Id:Date; b=P5Fg6iplIaCFZ9FZ+U9cktk62eS8hMLuENGBYByzuoUOiBtHXzzgqKZ+2cnWcH0ZdzIxVN2j5KCfBoqO58vcQXNLs0jGVWysKYiSJhPb5uC3coFtISpceRBtNysi+Rl1xTL6zgWfByA7Vo11w0WlbQjOvJdSQAvr+FZmBmHaXXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR4Hp3aF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR4Hp3aF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B76CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762351793;
	bh=e/tKDnS0RvEsUvL4+BarqOd++29tcvkjeg99r4fFSzs=;
	h=To:Subject:From:Date:From;
	b=MR4Hp3aF1w9tK1oER+IryZ7Z13UEhyww0XHq1/MDRUpi2pCt1aJowV88T17OerOyu
	 2g/qT9M1oRHnSOLH7G6/dergiYZtVw0cW/n9oFeO2izr2MhWC1jkt/R3HFCWQ292rJ
	 4Z7fgIgTymUoByAWiHKEJme26gdUWMJBoopYJYGSmvKXegBTNtyZJpDvALlwOdqPcv
	 o8U/9jRAtxOx9JLKi8TDTa6t8wejnLptt3I4Zn9HVpgUzodog9tg2aOVNbAKYkawbM
	 U+szH1ROx0AnXTaUSMNVohe/Aa6lG4URfhhJ72GjGAbmyKXXJv43jiswIx7VtX9B3K
	 1zeqSm8wJ4RHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE15CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235179357.25371.6946347993096261920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a95cc92cbf3468f99d88641a7e27e637592b2b3c8dc756fb84b0ff40740b99
Date: Wed, 05 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762351793
