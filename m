Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401C11E521E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749103794; cv=none; b=FDGy5I8Y/6NppkOU03GMDQopHljU1wLhFlWk93QO+pDg2sm+sJeV2z/+SLSzu9AHoi68KIDXUoNSggbKPMT39P1weYSeDQg1UuZtQS0p1gtT11HmYj4oHLE6RHg+3BrqxLV7N94M2obklAqHGhifCL8t2WQ61jXMxI69291Z8AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749103794; c=relaxed/simple;
	bh=cwlhnRqiOR0xtNNyJVMBwHJTGfMiKG2V50403Fpn69w=;
	h=To:Subject:From:Message-Id:Date; b=CJq1dt2V2oFmVh2zh1hkHzXljxtvMpqAAECV4mDJOy44zSpPXc/SCMVfvOZy99K3YNAt7cuzS8G1piplr5m8Q7XnWsmlA31axv6hvBNQJxQL3t1RVoZ53q82sT3Ucrhm2EsEi2tunB5woCoCyPlx1hp0rOhSHr9NGnb6pW8q2HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdqfbLod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdqfbLod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8833C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749103793;
	bh=cwlhnRqiOR0xtNNyJVMBwHJTGfMiKG2V50403Fpn69w=;
	h=To:Subject:From:Date:From;
	b=cdqfbLodbcgGIue/mgV7MU4fvtzwyfES0X28zFsEaxxUrybhIDB0rbkwaYcOChxTw
	 amDjx9HKi2HayN2myQ4u5+47SdLXUAEfAKm9cAPdFk9QTx2fKvWu74guavaiABZcan
	 xajdY7zkJrl7z0a2qF+wR6zYozgb6sMz4OYcaBogfWdBCrw0RRtyDgIh0kJb7lnqx2
	 YU9YIblf2bkEmsCwH1ZociRZ+3rPU6whVrpxlgp7wPZLTwOVprMvhyaq+1rfSKdYZH
	 PV8AA3yGzmoqPcivlqaBPxN9G13V5ywIQCI8804u1BTAehOoDR3cxZjvqhIHGObuRu
	 MK/UJp+s/paTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A2C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910379358.23042.8471857727498298468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02165a12a1968b8c97e603a61a2e11fabad53ca7efd0fe2363877da34578f2e4
Date: Thu, 05 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749103793
