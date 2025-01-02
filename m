Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B223190051
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735818954; cv=none; b=ScaGYkKJ1mnSyv9yDFhiV3RmoE6h+EAEkT4vcKD0A9dNuj4gCsykc2BOl2YpiB4arIQdIORLuFHypZVlHzUl56+Hco7ArFRPF2ITJEdn1o/J1VbXkhIjlw91LCJN0yaAYpwv9EPJHc8pbfiflWA85IWfGGTjrjbKKk6a4P+Rkvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735818954; c=relaxed/simple;
	bh=nV8Dse5QgNkS4Ivk2h6YpU62fvQA82pO6XR/df6AiXM=;
	h=To:Subject:From:Message-Id:Date; b=TAasssfrVYzqGAt/cE8Dt89zQE3dKWunXWhIRquGbHY6dmMHmqmAFOVpPc2BgIn9VNdU7lZmYvmgPHRpPX4VblWfWgYDKx8MOsi8aVNBwYEr1PgUQOkNYiU6xmV33gPqUigE+kLCIk2LbT9Yshv4sTPNMsuwOq+0LXQmeYa1LiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbxasuRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbxasuRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF607C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735818953;
	bh=nV8Dse5QgNkS4Ivk2h6YpU62fvQA82pO6XR/df6AiXM=;
	h=To:Subject:From:Date:From;
	b=CbxasuRhRqlsVn+zLJeAUq6wndqFRmV9I9xJ4L87acoEG036xwwaZ+Ll9nCsvlz/1
	 d3KI8GiwK48YLXgjnxnuXfDrQ3Idtzr8Z3j/F1tgiEnHgsEj1o2CmV3AaAuY4fQShh
	 MNEYb8cfoLp/go3qL0Hplwxz58gDqmyifxC4qUDo2W/Mv8dWV62o28AXETfLSQ1f9W
	 zkMLuT+NvVwW5IELKLD/bW8r9I/cFFZn5XzZ9ZzswYI6w2czvohoVfMzdVh+JQ4af9
	 qN3ImdHlIVttdqP32EeKzeoNa7Oydf1LX2d/4eBxp8U+9Gck0EpkvSWdW20undqwI7
	 aZuv+hw+SXofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BCEE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581895361.16130.15943613442024827066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d527f0bc0099746ec04edc3635be1fd3577b6e94045aa8e7f567fc7867933561
Date: Thu, 02 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735818953
