Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3B415A864
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747438795; cv=none; b=lpRePRamyKmPEgLNWQ89FNsmC6HacS2jLlKfywynEQVWbIaHrvmGvfh26l6VGZzSqHLqr5hywMfhiAhFT3PpJtX2oOvYjsMoJ7qmqz63IApcDiSVxQFi2lKRI59M7tsIwbO7g8OzzL61pcgjprYgowU0BJRHJbsJY051m1wICw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747438795; c=relaxed/simple;
	bh=G+V+HsyDJ45JKICn8L1xo9/BslUuETXnSodDXhcRzQs=;
	h=To:Subject:From:Message-Id:Date; b=Up2tgXhTqpM0t4HGPScumy+ZlG+Xle0Vr1dLp5zGb8FiIoQvGs/0ijxOdV/35QUfdBNZ2SC0QSA20Dhl39PYgg6Z34+yWXByVrEcxli/Yk8JvWRK0Thd5C0V6QCmci6kmcQOlwCId+P5bug5Ei963d+RaBkG/ZSgAsZ10BX/fc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZSlx1VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZSlx1VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED91C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747438793;
	bh=G+V+HsyDJ45JKICn8L1xo9/BslUuETXnSodDXhcRzQs=;
	h=To:Subject:From:Date:From;
	b=pZSlx1VFWMGlQtYS5syNJlZHTRYyFA0Pg6WB3hfyw9jJrIODlDdMVwShLUQmWvRKC
	 EeaHYAkUlN1mvk7OOGs7toTmHdQosVbVrJ2zrV1aAfoL9PCEeshm5cnJtpjWPdXBqO
	 cEP9BdL98wmhKGbR0dZPs5wtcYCvKzLyRjI/0ukTml8AhkB+GLb78QVub8O0KdZDbA
	 24SKqaFhJDs0C7UNFuNdjjHBhEUaLDaknik4LhmCzKE+4igq5Ol2qrG0ODxjVYDnDI
	 VG6iX5aNmYhMqTQXQ6cl5F21CqpylZZ/9XIgvvBbyqVHQtLa8/Qck32pgyUpu0rFtl
	 UCT3IBmQg7ikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED97C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743879357.9945.6215197614751099724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47064c20f536cc3665df4b14c1b0df26fbbafa76acb29f521815f406c134a31
Date: Fri, 16 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747438793
